package cmd

import (
	"database/sql"
	"fmt"
	"log"
	"time"

	_ "github.com/go-sql-driver/mysql"
	"github.com/urfave/cli/v2"
)

type TheaterMovieTransactionTotals struct {
	Id       int     `json:"id"`
	Name     string  `json:"name"`
	SumTotal float32 `json:"sum_total"`
}

func GetMostSalesByDay(context *cli.Context, connection *sql.DB) error {
	// Validates the given date argument against the following format: "Y-m-d"
	startOfDay, dateTimeError := time.Parse(time.DateOnly, context.Args().Get(0))
	if dateTimeError != nil {
		log.Fatal(dateTimeError.Error())
	}

	year, month, day := startOfDay.Date()
	endOfDay := time.Date(year, month, day, 23, 59, 59, 0, time.Now().Location())

	query := fmt.Sprintf(
		"select `theaters`.`id`, `theaters`.`name`, sum(`theater_movie_transactions`.`total`) as `sum_total` from `theaters` inner join `theater_movies` on `theaters`.`id` = `theater_movies`.`theater_id` inner join `theater_movie_transactions` on `theater_movies`.`id` = `theater_movie_transactions`.`theater_movie_id` where `theater_movie_transactions`.`created_at` between '%s' and '%s' group by `theaters`.`id`;",
		startOfDay.Format(time.DateTime),
		endOfDay.Format(time.DateTime),
	)

	results, queryError := connection.Query(query)
	if queryError != nil {
		log.Fatal(queryError.Error())
	}

	var theaterName string
	var theaterSales float32
	for results.Next() {
		var theaterTotals TheaterMovieTransactionTotals

		scanError := results.Scan(&theaterTotals.Id, &theaterTotals.Name, &theaterTotals.SumTotal)
		if scanError != nil {
			log.Fatal(scanError.Error())
		}

		if theaterTotals.SumTotal > theaterSales {
			theaterSales = theaterTotals.SumTotal
			theaterName = theaterTotals.Name
		}
	}

	fmt.Printf("%s has the biggest earnings at %.2f", theaterName, theaterSales)
	return nil
}

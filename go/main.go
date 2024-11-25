package main

import (
	"a2a-theaters/cmd"
	"database/sql"
	"fmt"
	"log"
	"os"

	_ "github.com/go-sql-driver/mysql"
	"github.com/joho/godotenv"
	"github.com/urfave/cli/v2"
)

func main() {
	envError := godotenv.Load()
	if envError != nil {
		log.Fatal("Error loading .env file")
	}

	dataSourceName := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", os.Getenv("DB_USERNAME"), os.Getenv("DB_PASSWORD"), os.Getenv("DB_HOST"), os.Getenv("DB_PORT"), os.Getenv("DB_DATABASE"))
	databaseConnection, databaseError := sql.Open("mysql", dataSourceName)
	if databaseError != nil {
		log.Fatal(databaseError.Error())
	}

	app := &cli.App{
		Commands: []*cli.Command{
			{
				Name:  "theaters",
				Usage: "options for theaters.",
				Subcommands: []*cli.Command{
					{
						Name:  "most-sales-by-day",
						Usage: "find which movie theater generated the most sales for that day.",
						Action: func(cCtx *cli.Context) error {
							return cmd.GetMostSalesByDay(cCtx)
						},
					},
				},
			},
		},
	}

	if appError := app.Run(os.Args); appError != nil {
		log.Fatal(appError.Error())
	}

	// defer the close till after the main function has finished executing
	defer databaseConnection.Close()
}

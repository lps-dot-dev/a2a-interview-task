package main

import (
	"fmt"
	"log"
	"os"

	"github.com/urfave/cli/v2"
)

func main() {
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
							fmt.Println("Not yet implemented!")
							return nil
						},
					},
				},
			},
		},
	}

	if err := app.Run(os.Args); err != nil {
		log.Fatal(err)
	}
}

package models

type TheaterMovieTransaction struct {
	Id             int     `json:"id"`
	TheaterMovieId int     `json:"theater_movie_id"`
	SubTotal       float32 `json:"sub_total"`
	SalesTax       float32 `json:"sales_tax"`
	Total          float32 `json:"total"`
	CreatedAt      string  `json:"created_at"`
	UpdatedAt      string  `json:"updated_at"`
}

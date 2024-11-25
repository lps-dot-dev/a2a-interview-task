package models

type Movie struct {
	Id          int    `json:"id"`
	Name        string `json:"name"`
	Genre       string `json:"genre"`
	Plot        string `json:"plot"`
	Language    string `json:"language"`
	Country     string `json:"country"`
	Rating      string `json:"rating"`
	ReleaseDate string `json:"release_date"`
	Runtime     int    `json:"runtime"`
	Poster      string `json:"string"`
	CreatedAt   string `json:"created_at"`
	UpdatedAt   string `json:"updated_at"`
}

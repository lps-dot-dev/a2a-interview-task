package models

type TheaterMovie struct {
	Id        int `json:"id"`
	MovieId   int `json:"movie_id"`
	TheaterId int `json:"theater_id"`
}

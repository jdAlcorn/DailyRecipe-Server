CREATE DATABASE IF NOT EXISTS DailyRecipe COLLATE = utf8mb4_general_ci;

CREATE TABLE DailyRecipe.RecipePictures (
	PictureId int NOT NULL AUTO_INCREMENT,
	PictureHint varchar(255),
	PictureData MEDIUMBLOB,

	PRIMARY KEY (PictureId)
);

CREATE TABLE DailyRecipe.Recipes (
	RecipeId int NOT NULL AUTO_INCREMENT,
	RecipeName varchar(255),
	PictureId int,
	Ingredients varchar(65000),
	PrepTime varchar(255),
	CookTime varchar(255),
	Description varchar(65000),
	Instructions varchar(65000),

	PRIMARY KEY (RecipeId),
	FOREIGN KEY (PictureId) REFERENCES RecipePictures(PictureId)
);
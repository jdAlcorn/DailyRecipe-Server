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

CREATE TABLE DailyRecipe.LoginInfo (
	LoginInfoId int NOT NULL AUTO_INCREMENT,
	HashedPassword varchar(255),

	PRIMARY KEY (LoginInfoId)
);

INSERT INTO DailyRecipe.LoginInfo (HashedPassword) VALUES ("$2y$10$3aJ7NtfLjR8PuE4Cjpi1zelBvNFllL1eN/Aw.asPz/PaU7kD4WR26");
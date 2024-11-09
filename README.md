<h1 align="center">Tennis Grand Slam Results Web Platform

## Project Overview

The objective of this project is to develop a web platform dedicated to displaying and managing the results of various tennis Grand Slam tournaments. This platform will offer several features, including the ability to consult detailed data, analyze player performance, and add new data such as match results and player profiles.

## Features

- **Data Exploration**: 
  - A section of the website for exploring the data warehouse using OLAP operators. 
  - The "Achievements" section will display detailed statistics of tennis players’ performance across various Grand Slam tournaments.

- **Data Integration**: 
  - A section for adding new data into the database, including match results and player profiles.

## Data Source

All the data used in this project has been sourced from the platform **Kaggle**. We have verified that the data is accurate and reliable before integrating it into the database.

## Technology Stack

- **Frontend**: 
  - HTML
  - CSS
  - PHP
  
- **Backend**: 
  - PHP
  
- **Database**: 
  - MySQL

- **Data Source**: 
  - Kaggle

## Project Structure

```
 📦SlamData
 ┣ 📂css
 ┃ ┣ ✏️about.css
 ┃ ┣ ✏️index.css
 ┃ ┣ ✏️player_data.css
 ┃ ┣ ✏️player_form.css
 ┃ ┗ ✏️slams.css
 ┣ 📂data
 ┃ ┣ 📄Australian Open Men's Singles,1969 - 2021.csv
 ┃ ┣ 📄French Open Men's Singles,1968 - 2021.csv
 ┃ ┣ 💾slamdata.sql
 ┃ ┣ 📄US Open Men's Singles,1968-2021.csv
 ┃ ┗ 📄Wimbledon Open Era,1968-2021.csv
 ┣ 📂forms
 ┃ ┣ 🐘insert_match_form.php
 ┃ ┣ 🐘insert_player_form.php
 ┃ ┣ 🐘player_achievements_form.php
 ┃ ┣ 🐘player_achievements_response.php
 ┃ ┗ 🐘response.php
 ┣ 📂img
 ┃ ┣ 🖼️AO.png
 ┃ ┣ 🖼️AOT.svg.png
 ┃ ┣ 🖼️back.jpeg
 ┃ ┣ 🖼️RG.png
 ┃ ┣ 🖼️RGT.svg.png
 ┃ ┣ 🖼️USO.png
 ┃ ┣ 🖼️USOT.svg.png
 ┃ ┣ 🖼️WIM.png
 ┃ ┗ 🖼️WIMT.svg.png
 ┣ 🌐about.html
 ┣ 🐘connectDB.php
 ┣ 🌐index.html
 ┣ 📜README.md
 ┗ 🐘slams.php
```

## Setup

### Prerequisites

Before you start, ensure you have the following installed:

- **XAMPP/WAMP/MAMP** (or any local web server) to run PHP and manage MySQL databases.
- **A modern browser** to view the site (Chrome, Firefox, etc.).

### 1. Clone the Repository

To get started, clone the repository to your local machine:

```bash
git clone https://github.com/MrPaquiteau/SlamData.git
cd SlamData
```

### 2. Create the Database

Next, you need to create the database using the provided `slamdata.sql` file. This file contains all the necessary SQL commands to set up the database schema and populate it with initial data.

1. Open your database management tool (e.g., phpMyAdmin if you are using XAMPP/WAMP/MAMP).
2. Create a new database named `slamdata`.
3. Import the `slamdata.sql` file into the newly created database.

### 3. Configure the Application

You must configure the application to connect to your database. Open the file `connectDB.php` and change the settings as needed

### 4. Start the Local Server

Start your local web server (XAMPP/WAMP/MAMP) and ensure that both Apache and MySQL services are running.

### 5. Access the Application

Open your web browser and navigate to `http://localhost/SlamData` to access the application.

### 6. Add New Data

You can add new data such as match results and player profiles through the provided interface in the application.

## Usage

Once the setup is complete, you can start using the application to view and manage tennis Grand Slam results and player profiles.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

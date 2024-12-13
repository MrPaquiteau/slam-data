<h1 align="center">🎾Tennis Grand Slam Results Web Platform


## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Data Source](#data-source)
- [Technology Stack](#technology-stack)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
  - [Option 1: With Docker](#option-1-with-docker)
  - [Option 2: Without Docker](#option-2-without-docker)
- [Installation](#installation)
  - [Clone the Repository](#1-clone-the-repository)
  - [Installation Methods](#2-installation-methods)
    - [Option A: Docker Installation](#option-a-docker-installation)
    - [Option B: Local Server Installation](#option-b-local-server-installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)
- [Contributors](#contributors)

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

- **Containerization**:
  - Docker
  - Docker Compose

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
 ┣ 📂config
 ┃ ┗ 📜my.cnf
 ┣ 🌐about.html
 ┣ 🐘connectDB.php
 ┣ 🌐index.html
 ┣ 📜README.md
 ┣ 🐋docker-compose.yaml
 ┣ 🐋Dockerfile
 ┗ 🐘slams.php
```

## Prerequisites

- A modern web browser

### Option 1: With Docker
- Docker installed on your system

### Option 2: Without Docker
- XAMPP, WAMP, or MAMP

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/MrPaquiteau/slam-data.git
cd slam-data
```

### 2. Installation Methods

#### Option A: Docker Installation

```bash
docker-compose up --build
```

Access the application at `http://localhost:8080`

#### Option B: Local Server Installation

1. Create Database
   - Open phpMyAdmin
   - Create a database named `slamdata`
   - Import the `slamdata.sql` file

2. Connection Configuration
   - Modify `connectDB.php` with your connection parameters

3. Move the Project
   - Copy the `slam-data` folder to your web server's root directory (e.g., `htdocs`)

4. Start Local Server
   - Launch Apache and MySQL services

5. Access the Application
   - Open `http://localhost/slam-data` in your browser

## Usage

Once the setup is complete, you can start using the application to view and manage tennis Grand Slam results and player profiles.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

Romain TROILLARD

## Contributors

- Adrien VAN-ROBAYS
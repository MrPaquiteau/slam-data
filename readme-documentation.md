# SLAM Data - Tennis Grand Slam Results Management Application

## Project Description

SLAM Data is a web application designed to manage and visualize Grand Slam tennis tournament results. It provides an intuitive interface for consulting player performances and match outcomes.

## Prerequisites

### Option 1: With Docker
- Docker installed on your system

### Option 2: Without Docker
- XAMPP, WAMP, or MAMP
- A modern web browser

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

## Features

- Grand Slam tournament results consultation
- Player profile management
- Performance statistics visualization

## Project Structure

```
slam-data/
│
├── css/           # Stylesheets
├── js/            # JavaScript files
├── img/           # Images and resources
├── pages/         # PHP pages
├── connectDB.php  # Database configuration
└── index.php      # Homepage
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Common Issues

- Verify that all prerequisites are installed
- Ensure paths and configurations match your environment
- Check logs in case of errors

## Technologies Used

- PHP
- MySQL
- HTML5
- CSS3
- JavaScript
- Docker (optional)

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Your Name - [your-email@example.com](mailto:your-email@example.com)

Project Link: [https://github.com/MrPaquiteau/slam-data](https://github.com/MrPaquiteau/slam-data)

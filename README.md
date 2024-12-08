# PHP Multi-Version Docker Setup

This project provides a Dockerized environment for managing multiple PHP versions alongside essential services like MySQL, PHPMyAdmin, RabbitMQ, and Redis. It simplifies the development workflow by allowing you to easily switch between different PHP versions in isolated containers.

## Features
- Multiple PHP versions (7.4, 8.0, etc.)
- MySQL database with PHPMyAdmin for management
- RabbitMQ for message queuing
- Redis for caching and data storage

## Prerequisites
Ensure you have the following installed:
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/shahzaib0791/php-multi-version-docker.git
   cd php-multi-version-docker

2. Build and start the containers:
    ```bash
    docker-compose up --build

3. Access the services via:
    - PHP: http://localhost:8080
    - PHPMyAdmin: http://localhost:8081 (User: root, Password: root)
    - RabbitMQ: http://localhost:15672 (Username: guest, Password: guest)
    - Redis: Accessible via the PHP containers or redis-cli

## Configuration
This project uses Docker Compose to orchestrate multiple containers:

- PHP Versions: Dockerfiles are included for different PHP versions, such as php:7.4 and php:8.0.
- MySQL: Configured for local database storage.
- PHPMyAdmin: Provides a web interface to interact with the MySQL database.
- RabbitMQ: A messaging queue broker service for handling messages between components.
- Redis: A fast in-memory data store used for caching and other purposes.

## Usage
- PHP Containers: Available on http://localhost:8080 for PHP-based applications.
- PHPMyAdmin: For managing the MySQL database via http://localhost:8081.
- RabbitMQ: Access the management interface at http://localhost:15672.
- Redis: Interact with Redis through PHP or redis-cli.

## Useful Docker Commands
- Start Containers:
    ```bash
    docker-compose up
- Stop Containers:
    ```bash
    docker-compose down
- Rebuild Containers:
    ```bash
    docker-compose up --build

## Contribution
Contributions are welcome! Fork the repository, make changes, and submit pull requests.

## License
[MIT](LICENSE)

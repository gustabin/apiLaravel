# Laravel API Backend Project

This is the backend of a Laravel-based API that provides services for a Todo management system. The API allows users to register, log in, manage their todos, and perform various CRUD operations on the "Todo" entity.

## Requirements

Before running the API, make sure you have the following requirements installed:

- PHP >= 7.3
- Composer (https://getcomposer.org/)
- Laravel >= 8.x (https://laravel.com/)
- Database compatible with Laravel (e.g., MySQL, PostgreSQL, SQLite, etc.)

## Installation

Follow these steps to install and set up the project:

1. Clone the repository from GitHub.

```bash
git clone https://github.com/gustabin/apiLaravel.git
```

2. Navigate to the project directory.

```bash
cd project_name
```

3. Install project dependencies via Composer.

```bash
composer install
```

4. Copy the `.env.example` file and rename it to `.env`. Then, configure your database details in the `.env` file.

```bash
cp .env.example .env
```

5. Generate an application key for the project.

```bash
php artisan key:generate
```

6. Run the migrations to create the necessary tables in the database.

```bash
php artisan migrate
```

7. Optional: Run seeders to populate the database with sample data.

```bash
php artisan db:seed
```

8. Start the Laravel development server.

```bash
php artisan serve
```

## Usage

Once the server is up and running, you can access the API at `http://localhost:8000/api/`. Here, you will find available routes for user registration, login, todo management, and more.

## API Endpoints

### Users

- `POST /api/register`: Register a new user in the application.
- `POST /api/login`: Log in with user credentials.
- `GET /api/user-profile`: Get the profile of the authenticated user.
- `GET /api/logout`: Log out and revoke access tokens.

### Todos

- `GET /api/todo/{id}`: Get details of a todo by ID.
- `GET /api/todos/{user_id}`: Get all todos for a user by ID.
- `POST /api/todo/{user_id}`: Create a new todo associated with a user by ID.
- `PUT /api/todo/{id}`: Update details of a todo by ID.
- `DELETE /api/todo/{id}`: Delete a todo by ID.

## Contributions

If you wish to contribute to the project, feel free to create a Pull Request with your enhancements or fixes.

## License

This project is distributed under the MIT License. See the `LICENSE` file for more details.

---
I hope this information is helpful to you. If you have any questions or need further information, feel free to contact me. Good luck with your project!

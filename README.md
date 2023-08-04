# Proyecto Laravel API Backend

Este es el backend de una API basada en Laravel que proporciona servicios para un sistema de gestión de tareas (TODOs). La API permite a los usuarios registrarse, iniciar sesión, administrar sus tareas y realizar diversas operaciones CRUD en la entidad "Todo".

## Requisitos

Antes de ejecutar la API, asegúrate de tener instalados los siguientes requisitos:

- PHP >= 7.3
- Composer (https://getcomposer.org/)
- Laravel >= 8.x (https://laravel.com/)
- Base de datos compatible con Laravel (por ejemplo, MySQL, PostgreSQL, SQLite, etc.)

## Instalación

Sigue los siguientes pasos para instalar y configurar el proyecto:

1. Clona el repositorio desde GitHub.

```bash
git clone https://github.com/tu_usuario/tu_repositorio.git
```

2. Navega al directorio del proyecto.

```bash
cd nombre_del_proyecto
```

3. Instala las dependencias del proyecto a través de Composer.

```bash
composer install
```

4. Copia el archivo `.env.example` y renómbralo a `.env`. Luego, configura los detalles de tu base de datos en el archivo `.env`.

```bash
cp .env.example .env
```

5. Genera una clave de aplicación para el proyecto.

```bash
php artisan key:generate
```

6. Ejecuta las migraciones para crear las tablas necesarias en la base de datos.

```bash
php artisan migrate
```

7. Opcional: Ejecuta los seeders para poblar la base de datos con datos de prueba.

```bash
php artisan db:seed
```

8. Inicia el servidor de desarrollo de Laravel.

```bash
php artisan serve
```

## Uso

Una vez que el servidor está en funcionamiento, puedes acceder a la API en la URL `http://localhost:8000/api/`. Aquí se encuentran las rutas disponibles para registrar usuarios, iniciar sesión, administrar tareas y más.

## Endpoints de la API

### Usuarios

- `POST /api/register`: Registrar un nuevo usuario en la aplicación.
- `POST /api/login`: Iniciar sesión con credenciales de usuario.
- `GET /api/user-profile`: Obtener el perfil del usuario autenticado.
- `GET /api/logout`: Cerrar sesión y revocar los tokens de acceso.

### Tareas (Todos)

- `GET /api/todo/{id}`: Obtener detalles de una tarea por su ID.
- `GET /api/todos/{user_id}`: Obtener todas las tareas de un usuario por su ID.
- `POST /api/todo/{user_id}`: Crear una nueva tarea asociada a un usuario por su ID.
- `PUT /api/todo/{id}`: Actualizar los detalles de una tarea por su ID.
- `DELETE /api/todo/{id}`: Eliminar una tarea por su ID.

## Contribuciones

Si deseas contribuir al proyecto, siéntete libre de crear un Pull Request con tus mejoras o correcciones.

## Licencia

Este proyecto se distribuye bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

---
Espero que esta información te sea útil. Si tienes alguna pregunta o necesitas más información, no dudes en contactarme. ¡Buena suerte con tu proyecto!

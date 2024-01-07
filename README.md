# MyReactVite

This is a template for starting frontend projects using Vite, React, TypeScript, Tailwind CSS, Docker, and Docker Compose.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd <the-repository-here>
   ```

2. Build and run the Docker container:

   ```bash
   docker-compose up --build
   ```

3. Open your browser and navigate to [http://localhost:8080](http://localhost:8080) to view the application.

## Project Structure

- **dist:** Contains the built application files.
- **src:** Contains the source code for your React application.
- **public:** Contains static assets and the main HTML file.

## Nginx Configuration

The application is served using Nginx. The Nginx configuration is included in the Dockerfile and Docker Compose configuration.

## Docker Configuration

The project uses Docker and Docker Compose for containerization. The Dockerfile installs dependencies, builds the application, and then serves it using Nginx.

### Building the Docker Image

```bash
  docker-compose build
```

## Additional Information
- Dependencies:

  [Node.js](https://nodejs.org/),

  [npm](https://www.npmjs.com/),

  [Docker](https://www.docker.com/),

  [Docker Compose](https://docs.docker.com/compose/)

- Port: The application is served on port 8080, you can change if you want and to don't have conflicts if a other port is alocated

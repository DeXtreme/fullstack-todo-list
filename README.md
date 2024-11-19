<p align="center">
    <img src="https://user-images.githubusercontent.com/62269745/174906065-7bb63e14-879a-4740-849c-0821697aeec2.png#gh-light-mode-only" width="40%">
    <img src="https://user-images.githubusercontent.com/62269745/174906068-aad23112-20fe-4ec8-877f-3ee1d9ec0a69.png#gh-dark-mode-only" width="40%">
</p>

## Full-Stack Todo List Application

This repository hosts a full-stack Todo List application designed to allow users to create, manage, and organize their tasks efficiently. The application features a React-based frontend and a Node.js backend, utilizing MongoDB for data persistence.

## Setup and Deployment
### Requirements
- Docker
- Docker-Compose

### Steps
1. Clone the repository
   
   ```bash
   git clone https://github.com/DeXtreme/fullstack-todo-list.git
   ```
2. In the folder, run the following commands to build the frontend,backend and database containers
   ```bash
   docker-compose build
   ```
3. Start all the containers
   ```bash
   docker-compose up
   ```
4. Access the frontend by visiting `http://localhost/`

5. To stop the containers, run the following  command
   ```bash
   docker-compose down
   ```

### Network and Security Configurations
The frontend container binds to port 80(http) on the host. The backend container binds to port 4000 on the host. All the containers run on the same bridge network to allow commnication between the backend and database containers. The database container does not bind to ports on the host to prevent direct access. All required environment variables and build arguments for the container have been set in the docker-compose.yml file, namely:
- **BACKEND_URL** : The backend url the frontend should use
- **DB_HOST** : The hostname of the database
- **DB_NAME** : The database name
- **DB_PORT** : The port the database is using

### Troubleshooting Guide
If you encounter any issues building or starting the containers:
1. Make sure you have a working internet connection so the container images can be downloaded
2. Update your version of Docker and Docker-Compose
3. Check the Docker daemon and make sure it's running correctly 

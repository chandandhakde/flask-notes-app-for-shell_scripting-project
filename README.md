# Flask Notes App — Docker & Shell Deployment

A simple **Flask Notes application** deployed using **Docker, Docker Compose, and Bash Shell Scripting** on an Ubuntu server.

##  Technologies

* Python / Flask
* Docker
* Docker Compose
* Bash Shell Scripting
* Nginx
* Git / GitHub
* Ubuntu Linux

##  What This Project Does

The application is deployed automatically using a Bash script.

The script:

1. Clones the application from GitHub.
2. Installs Docker, Docker Compose, and Nginx.
3. Configures Docker access.
4. Removes old containers.
5. Builds the Docker image.
6. Starts the application using Docker Compose.
7. Handles deployment errors.

## Project Structure

```text id="2n5z2e"
├── app.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── templates/
├── static/
├── flask_app_deployed.sh
└── README.md
```

##  Deployment

Clone the repository:

```bash id="3f0d3g"
git clone https://github.com/chandandhakde/flask-notes-app-for-shell_scripting-project.git
cd flask-notes-app-for-shell_scripting-project
```

Make the script executable:

```bash id="p7y4cv"
chmod +x flask_app_deployed.sh
```

Run the deployment:

```bash id="1s0svf"
./flask_app_deployed.sh
```

Or:

```bash id="m9b1s2"
bash flask_app_deployed.sh
```

##  Docker Commands

Check containers:

```bash id="6r3v7x"
docker ps
```

View logs:

```bash id="7q8m0j"
docker compose logs -f
```

Stop application:

```bash id="8k1x4n"
docker compose down
```

Rebuild and start:

```bash id="0p9j2r"
docker compose up -d --build
```

##  Deployment Flow

```text id="9c7w2a"
GitHub
   ↓
Bash Script
   ↓
Install Requirements
   ↓
Docker Build
   ↓
Docker Compose
   ↓
Flask Container
   ↓
Application
```

##  Shell Scripting Concepts

This project demonstrates:

* Functions
* Variables
* `if` conditions
* Loops
* Command-line commands
* Exit status
* Error handling
* Git automation
* Docker automation
* Deployment automation

## 
Author

**Chandan Dhakde**

# SpringBoot Docker CI/CD Project

## Project Overview
This project demonstrates a **full CI/CD pipeline for a Spring Boot application** using **Docker** and **GitHub Actions**.  

The workflow automates:
- Code testing and validation
- Build of the Spring Boot JAR
- Docker image creation and push
- Deployment on a Docker-enabled server or platform

---

## CI/CD Pipeline Steps
1. **Checkout**: Pulls code from the GitHub repository.  
2. **Setup Java**: Configures JDK 17 for Gradle.  
3. **Run Tests**: Executes unit tests via `./gradlew test`.  
4. **Build JAR**: Builds the Spring Boot jar using `./gradlew clean bootJar`.  
5. **Docker Login**: Authenticates with Docker Hub using secrets.  
6. **Build Docker Image**: Creates a Docker image from the Dockerfile.  
7. **Push Docker Image**: Pushes the Docker image to Docker Hub.  
8. **(Optional) Deploy**: Pulls and runs the Docker container on a server (via SSH or free platform).

---

## Tools & Technologies Used


<!-- GitHub Actions -->
<a href="https://github.com/features/actions" target="_blank" rel="noreferrer">
  <img src="https://github.com/simple-icons/simple-icons/raw/develop/icons/githubactions.svg" alt="GitHub Actions" width="60" height="60"/>
</a>


<!-- Spring Boot -->
<a href="https://spring.io/projects/spring-boot" target="_blank" rel="noreferrer">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/spring/spring-original.svg" alt="spring boot" width="60" height="60"/>
</a>

<!-- Java -->
<a href="https://www.java.com/" target="_blank" rel="noreferrer">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="java" width="60" height="60"/>
</a>

<!-- Gradle -->
<a href="https://gradle.org/" target="_blank" rel="noreferrer">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/gradle/gradle-original.svg" alt="gradle" width="60" height="60"/>
</a>

<!-- Docker -->
<a href="https://www.docker.com/" target="_blank" rel="noreferrer">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" alt="docker" width="60" height="60"/>
</a>


---

## Setup Instructions

### 1. Clone the repository
```bash
git clone https://github.com/AyachyIbtyssem/SpringProject.git
cd SpringProject
./gradlew clean bootJar
docker build -t SpringProject .
docker run -d -p 8081:8080 ibtissem1234/sprinproject

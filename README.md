# 🔗 Spring Boot URL Shortener

A full-stack **URL Shortener Web Application** built using **Spring Boot, Thymeleaf, PostgreSQL, and Docker**.
This application allows users to generate short links, manage them through a dashboard, and redirect to the original URLs using a unique short key.

🚀 **Live Application**
https://spring-boot-url-shortener-6ydq.onrender.com

---

# ✨ Features

* Create short URLs from long URLs
* Redirect using generated short links
* Public and private URL support
* User authentication and login
* Dashboard to manage personal URLs
* Pagination support for URL listings
* Delete selected URLs
* URL expiration support
* Server-side validation
* Database migration with Flyway
* Dockerized deployment
* Cloud deployment on Render

---

# 🛠 Tech Stack

### Backend

* Java 17
* Spring Boot
* Spring MVC
* Spring Security
* Spring Data JPA
* Hibernate

### Frontend

* Thymeleaf
* HTML
* Bootstrap

### Database

* PostgreSQL

### DevOps / Deployment

* Docker
* Render (Cloud Hosting)

---

# 🏗 System Architecture

Client (Browser)
↓
Spring Boot Application
↓
PostgreSQL Database

---

# 📷 Application Screens

### Home Page

Users can create and view short URLs.

### Dashboard

Logged-in users can manage their own URLs.

### Redirect Service

Short links redirect to the original URL.

---

# 🚀 Running the Application Locally

## Clone the repository

```bash
git clone https://github.com/SiddhiGIITBombay404/spring-boot-url-shortener.git
cd spring-boot-url-shortener
```

## Run with Docker

```bash
docker compose up
```

Application will start at:

```
http://localhost:8080
```

---

## Run with Maven

```bash
./mvnw spring-boot:run
```

---

# ⚙️ Environment Variables

For production deployment the application uses environment variables:

```
DB_URL
DB_USERNAME
DB_PASSWORD
BASE_URL
PORT
```

Example configuration:

```
DB_URL=jdbc:postgresql://host:5432/database
DB_USERNAME=username
DB_PASSWORD=password
BASE_URL=https://your-app-url
```

---

# 🌐 Deployment

The application is deployed using:

* **Docker container**
* **Render Cloud Platform**
* **Managed PostgreSQL database**

Live URL:

```
https://spring-boot-url-shortener-6ydq.onrender.com
```

---

# 📂 Project Structure

```
spring-boot-url-shortener
 ┣ src
 ┃ ┣ main
 ┃ ┃ ┣ java
 ┃ ┃ ┣ resources
 ┃ ┃ ┃ ┣ templates
 ┃ ┃ ┃ ┗ application.properties
 ┣ Dockerfile
 ┣ compose.yaml
 ┣ pom.xml
 ┗ README.md
```

---

# 👨‍💻 Author

**Siddhi Gaikwad**

GitHub
https://github.com/SiddhiGIITBombay404

---


# MTES - Medical tele-expertise system

MTES is a web-based application designed to streamline patient management and medical consultations within a healthcare facility. It provides a platform for different medical professionals (Nurses, General Practitioners, and Specialists) to collaborate and manage patient care efficiently.

## Features

*   **User Authentication:** Secure user registration and login system with password hashing (jBCrypt).
*   **Role-Based Access Control:** Different dashboards and functionalities for Nurses, General Practitioners, and Specialists.
*   **Patient Management:** Create, search, and manage patient records, including personal information, medical history, and allergies.
*   **Consultation Management:** Create and manage medical consultations, including reason, observations, diagnosis, and treatment.
*   **Vital Signs Tracking:** Record and monitor patient vital signs.
*   **Expertise Requests:** General Practitioners can request expertise from Specialists for specific cases.
*   **Waiting Queue:** Manage the patient waiting list.

## Technologies Used

*   **Backend:**
    *   Java 17
    *   Jakarta EE (Servlet, JSP, JSTL)
    *   JPA (Jakarta Persistence API)
    *   Hibernate (JPA implementation)
*   **Database:**
    *   PostgreSQL
*   **Build Tool:**
    *   Maven
*   **Authentication:**
    *   jBCrypt

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

*   Java JDK 17 or higher
*   Apache Maven
*   PostgreSQL database server
*   A servlet container like Apache Tomcat

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/achraf99sik/MTES.git
    cd MTES
    ```
2.  **Database Setup:**
    *   Create a PostgreSQL database named `mtes_db`.
    *   Update the database credentials in `src/main/resources/META-INF/persistence.xml` if they are different from the default:
        ```xml
        <property name="jakarta.persistence.jdbc.user" value="postgres"/>
        <property name="jakarta.persistence.jdbc.password" value="root"/>
        ```
3.  **Build the project:**
    ```sh
    mvn clean install
    ```
4.  **Deploy the application:**
    *   Deploy the generated `target/MTES-1.0-SNAPSHOT.war` file to your servlet container (e.g., Apache Tomcat).

## Usage

1.  Access the application at `http://localhost:8080/MTES-1.0-SNAPSHOT/`.
2.  Register a new user with one of the available roles (Nurse, Generalist, Specialist).
3.  Log in with the newly created user.
4.  Based on your role, you will be redirected to the appropriate dashboard with access to the corresponding features.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

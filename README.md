# Train Locator Application

## Dependencies

- Java 8
- Maven
- MySQL

## Instructions for running the project

1.  Clone the repository.
2.  Open the terminal or git bash.
3.  Change the directory to the project folder using the following command:

    cd train-locator-application

4.  Type the following to build the jar file:

    mvn package

5.  In order to run the project, run the following command:

    java -jar target/train-locator-application

6.  After running the project, you can access the following endpoints using Postman:

    i. PUT Request to add a new train location data:

         localhost:3000/trains/{id}/location

    - {id} here id is the identifier of the train, e.g. localhost:3000/trains/124/location

    Request Body: JSON

    Example Request Body:

         {
              "name": "Intercity 10",
              "destination": "Tampere",
              "speed": 15.3,
              "coordinates": [12.5039, 13.1335]
          }

7.  The frontend of the application can be accessed using:

          localhost:3000

    i. Create an account using a valid email address, fullname and password.

    ii. After sucessful account creation the registration page redirects to the login page.

    iii. Once logged in you can see the train data automatically loading without any sort of page refreshing.

    iv. You can also see the profile information.

    v. Also, you can logout whenever you want.

8.  In order to exit the application, press CTRL+C from the keyboard in the terminal where the application is running.

---

- P.S. Please change the database properties according to your database as provided in the "application.properties" file inside "src/main/resources/" before running the application.

---

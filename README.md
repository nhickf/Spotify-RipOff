# Flutter Spotify Client

This Flutter application is a demonstration of a Spotify client, built using a robust and modern architecture. It showcases best practices for state management, data persistence, and API integration.

## ScreenShots
![image](https://github.com/user-attachments/assets/9a2f3885-f49b-403d-a725-52b0cab9b516) ![image](https://github.com/user-attachments/assets/f488f8bd-1ce8-4691-ab53-3562d2b4b969) ![image](https://github.com/user-attachments/assets/4527e066-dfdb-492a-b105-9c920d1fb0de)
![image](https://github.com/user-attachments/assets/fafb7903-1729-4921-b8f4-419bd36891a5) ![image](https://github.com/user-attachments/assets/47082385-ee85-49ca-8a6f-79de22e614ec) ![image](https://github.com/user-attachments/assets/154b0791-101a-487d-b40b-f007704d665b)










## Tech Stack

* **Flutter:** Cross-platform mobile development framework.
* **Dart:** Programming language used for Flutter.
* **BLoC (Business Logic Component):** State management solution for predictable and testable code.
* **Freezed:** Code generation for immutable classes, reducing boilerplate.
* **JSON Serialization:** Handling JSON data from the Spotify API.
* **Retrofit:** Type-safe HTTP client generator for API communication.
* **GetIt:** Service locator for dependency injection.
* **Dio:** Powerful HTTP client for making API requests.
* **Flutter Secure Storage:** Securely storing sensitive data (e.g., access tokens).
* **Floor:** SQLite database abstraction for local data persistence.
* **Spotify API:** Integration with the Spotify Web API.

## Features
 
* User authentication with Spotify.
* Browsing for artists, albums, and tracks.
* Saving and retrieving favorite's saved tracks.
* Local caching of data for offline availability.
* Secure storage of authentication tokens.

## Architecture

The application follows a layered architecture, separating concerns for better maintainability and testability:

* **Presentation Layer (UI):** Flutter widgets and BLoCs for UI logic.
* **Business Logic Layer (BLoC):** State management and business logic.
* **Data Layer:** Data sources (API, local database) and repositories.
* **Domain Layer (Optional but recommended for larger apps):** Entities and use cases.

## Getting Started

1.  **Clone the repository:**

    ```bash
    git clone [repository URL]
    ```

2.  **Navigate to the project directory:**

    ```bash
    cd [project directory]
    ```

3.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

4.  **Configure Spotify API:**
    * Create a Spotify Developer account and create an app to get your Client ID and Client Secret.
    * Add your Client ID and Client Secret to a secure configuration file or environment variables.
    * Configure the redirect URI in your Spotify developer dashboard and the application.
5.  **Generate code:**

    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

6.  **Run the application:**

    ```bash
    flutter run
    ```

## Code Generation

This project utilizes code generation for:

* **Freezed:** Immutable classes.
* **JSON Serialization:** Data models.
* **Retrofit:** API clients.
* **Floor:** Database entities and DAOs.

Run the following command to generate code:

```bash
flutter pub run build_runner build --delete-conflicting-outputs



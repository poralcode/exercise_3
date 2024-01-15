# Mobile Application Development: Exercise 3 (Login Screen)

## Overview

This Flutter project, named “Exercise 3,” is designed to function as a mobile application featuring a comprehensive login screen. The login screen facilitates users to authenticate by entering their username or email and password. For those who have forgotten their credentials, the application provides recovery options. It also extends the convenience of alternative login methods through various social media platforms such as Facebook, Google, LinkedIn, and Pinterest. A notable aspect of this application is its commitment to accessibility, demonstrated by its support for dark mode. This feature caters to user preferences and comfort, enhancing the overall user experience.

## Project Structure

The project is structured with the following key components:

- **main.dart**: This is the entry point of the Flutter application. It initializes and runs the `MyApp` widget, which sets up the application's theme and defines the home page.

- **home_page.dart**: The `HomePage` widget represents the main login screen of the application. It includes UI elements for user input fields (username/email and password), a login button, a "Forgot Password?" option, and alternative login methods (Facebook, Google, LinkedIn, Pinterest). The page layout is customizable, and it is built using Flutter's Material design components.

- **pubspec.yaml**: This file contains project metadata, dependencies, and assets configurations. It specifies the project's name, description, version, and required Flutter SDK version. It also lists dependencies such as `cupertino_icons` and `font_awesome_flutter`. Asset files, such as images, are defined in the `assets` section.

## Dependencies

The project relies on the following dependencies:

- `flutter`: The core Flutter framework.
- `cupertino_icons`: Provides Cupertino-style icons for iOS.
- `font_awesome_flutter`: Allows the use of FontAwesome icons for enhanced UI design.

## Getting Started

To get started with this Flutter project, follow these steps:

1. Ensure you have Flutter installed. If not, you can [install Flutter](https://flutter.dev/docs/get-started/install) by following the official documentation.

2. Clone this repository to your local machine.

3. Open the project in your preferred code editor or IDE.

4. Resolve required dependencies by using `flutter pub get` command.

5. Run the project using the `flutter run` command or by clicking the "Run" button in your IDE.

6. Explore and customize the `home_page.dart` file to design your login screen as desired.

## Additional Notes

- You can customize this project if you want.

- This project only tested in Android Mobile Phone, Windows 11, and Chrome.

- The project includes a customizable login screen, but it is recommended to tailor it to your specific requirements.

- You may need to replace the placeholder assets (`flutterio_icon_purple.svg` and `flutterio_icon_purple.png`) with your own logo or graphics.

- This project is well-documented with comments to help you understand its structure and functionality.

Feel free to modify and expand upon this project to meet your needs. If you have any questions or encounter issues, refer to the Flutter documentation or seek assistance from the Flutter community.

## Sample Output

[Android: Light Mode](https://raw.githubusercontent.com/poralcode/exercise_3/main/sample_output/sample-output-android-light-mode.jpg)

[Android: Dark Mode](https://github.com/poralcode/exercise_3/blob/main/sample_output/sample-output-android-dark-mode.jpg)

[Chrome](https://github.com/poralcode/exercise_3/blob/main/sample_output/sample-output-chrome.png)

[Windows App: Windows 11](https://github.com/poralcode/exercise_3/blob/main/sample_output/sample-output-windows-11.png)

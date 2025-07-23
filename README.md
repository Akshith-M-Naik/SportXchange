
<p align="center">
  <img src="https://raw.githubusercontent.com/Akshith-M-Naik/SportXchange/main/assets/images/adaptive_foreground_icon.png" alt="SportXchange Logo" width="200"/>

</p>

<h1 align="center">SportXchange</h1>

<p align="center">
  An all-in-one Flutter platform for sports tutorials, event updates, e-commerce, and facility discovery.
</p>
<p align="center">
  <a href="https://sport-xchange-6t3twk.flutterflow.app/" target="_blank">
    <img src="https://img.shields.io/badge/Live-Demo-brightgreen?style=for-the-badge&logo=flutter" alt="Live Demo"/>
  </a>
</p>
---

## 📖 Table of Contents

-   [About The Project](#about-the-project)
-   [Key Features](#key-features)
-   [Application Flow](#application-flow)
-   [Built With](#built-with)
-   [Getting Started](#getting-started)
-   [Testing](#testing)

---

## 🎯 About The Project

SportXchange is an all-in-one platform designed to provide users with detailed sports tutorials, latest sports events updates, and an integrated e-commerce store for sports products. It is aimed at enhancing the sports experience for enthusiasts, players, and fans alike.

This application addresses several key challenges in the sports community:
* **Lack of Integrated Sports Information**: Sports enthusiasts struggle to find high-quality, well-organized tutorials and information across various sports.
* **Inconsistent Updates on Sports Events**: Fans and participants lack a reliable source for up-to-date information on sports events, schedules, and notifications.
* **Fragmented E-commerce Experience**: Purchasing sports equipment and merchandise requires navigating multiple online stores.
* **Limited Access to Local Sports Facilities**: Users find it challenging to locate nearby sports grounds and facilities.

This project was developed by students of the **Department of Computer Science & Engineering, B.M.S. College of Engineering**.

---

## ✨ Key Features

Our platform is packed with features to cater to every sports lover's needs:

* **📚 Sports Tutorials**
    * Access to detailed video and text-based tutorials across a wide variety of sports.
    * Content is categorized by skill level and the type of sport for easy navigation.

* **📅 Latest Events**
    * Get real-time updates on major sports events like the IPL, T20 World Cup, and more.
    * Features an event calendar and push notifications to keep you informed.

* **🛒 E-commerce Integration**
    * A built-in store offering a wide range of sports products, including equipment, jerseys, and accessories.
    * A secure and easy-to-use shopping cart for a seamless purchasing experience.

* **📍 Location Services**
    * A dedicated module to help users find the nearest sports grounds and facilities.
    * Features Google Maps integration for easy navigation to your chosen location.

---

## 🗺️ Application Flow

The navigation structure of the app is designed to be intuitive and user-friendly.


<p align="center">
  <img src="https://raw.githubusercontent.com/Akshith-M-Naik/SportXchange/main/assets/images/image.png" alt="SportXchange Logo" width="500"/>

</p>

---

## 🛠️ Built With

SportXchange is built using a modern, cross-platform technology stack to ensure a robust and scalable application.

* **Frontend**: Flutter for cross-platform development.
* **Backend**: Node.js with Express.js or Kotlin for server-side logic.
* **Database**: Firebase Firestore for real-time data handling.
* **Push Notifications**: Firebase Cloud Messaging for user updates.
* **Version Control**: Git (using GitHub).

---

## 🚀 Getting Started

This project is a starting point for a Flutter application. To get a local copy up and running, follow these simple steps.

1.  **Prerequisites**
    * Ensure you have the Flutter SDK installed on your machine.
    * An editor like VS Code or Android Studio.

2.  **Clone the repo**
    ```sh
    git clone [https://github.com/your-username/SportXchange.git](https://github.com/your-username/SportXchange.git)
    ```
3.  **Install packages**
    ```sh
    flutter pub get
    ```
4.  **Run the app**
    ```sh
    flutter run
    ```

---

## 🧪 Testing

### Integration Tests

To test on a real iOS / Android device, first connect the device and run the following command from the root of the project:

```bash
flutter test integration_test/test.dart

# SmartPark Flutter Parking Finder App

## Overview

The Flutter Parking Finder App is designed to help users find available parking spaces based on their current location. It uses Firebase for user authentication, including account creation, profile updates, and password reset. Google Maps is utilized to display parking locations on a map.

## Features

- **User Creation**: Sign up with multiple options like google,email,phone no with authentication
- **User Authentication**:  Sign in, and password reset functionalities using Firebase Authentication.
- **Map Integration**: View parking spaces on a map using Google Maps.
- **Profile Management**: Update user profile information.

## Prerequisites

1. **Flutter SDK**: Ensure you have Flutter installed. Follow the [Flutter Installation Guide](https://flutter.dev/docs/get-started/install).
2. **Firebase Project**: Set up a Firebase project and integrate Firebase with your Flutter app. Follow the [Firebase Setup Guide](https://firebase.google.com/docs/flutter/setup).
3. **Google Maps API Key**: Obtain an API key from Google Maps Platform. Follow the [Google Maps Platform Guide](https://developers.google.com/maps/gmp-get-started).

## Setup

### 1. Create a New Flutter Project
flutter create parking_finder
cd parking_finder
. Add Dependencies
Update your pubspec.yaml file to include the necessary dependencies:

yaml
Copy code
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.15.0
  firebase_auth: ^6.8.0
  cloud_firestore: ^4.1.0
  google_maps_flutter: ^2.1.1
  provider: ^6.1.3
Run flutter pub get to install the packages.

3. Configure Firebase
Create a Firebase Project: Go to Firebase Console and create a new project.
Add Firebase to Your App:
For Android, add the google-services.json file to the android/app directory.
For iOS, add the GoogleService-Info.plist file to the ios/Runner directory.
Enable Firebase Authentication: In the Firebase Console, navigate to the Authentication section and enable Email/Password sign-in.

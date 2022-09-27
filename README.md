# Digital 14 - Seat Geek API & Event Type Ahead Search

Type Ahead Searching App from Seat Geek API

### Requirements [Checked items are finished]

1.	[x] Write a type ahead against the Seat Geek API - (search view with results – Search and Listing screen)
2.	[x] Make a detail screen so the user can drill down into a result
3.	[x] Include instructions for building the application and any relevant documentation in a README.md file
4.	[x] Please post your submission on Github, Bitbucket or Gitlab
5.	[x] Make this flutter app work for both iOS and Android platforms


**Optional**
1.	[ ] Mac Desktop support [Needs verification]
2.	[x] The detail screen should allow the user to favorite/unfavorite the event
3.	[x] Type ahead results should reflect the favorite state of each event
4.	[x] Favorite results should be saved between launches of the app



## Getting Started


**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/CUManiar/digital_14_seat_geek_api
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```
**Step 3:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter run
```

### Libraries & Tools Used

* [http](https://pub.dev/packages/http)
* [Database](https://pub.dev/packages/hive), (https://pub.dev/packages/hive_flutter)
* [Provider](https://pub.dev/packages/provider) (State Management)
* [Route Managment](https://pub.dev/packages/go_router)
* [Internationalization](https://pub.dev/packages/intl)
* [Toasts](https://pub.dev/packages/flutter_easyloading)

### Added Testing for API

```
 test\widget_test.dart 
```

### Folder Structure



Here is the folder structure used in this project

```
lib/
 src/
 |- components/
 |- configs/
 |- constants/
 |- models/
 |- pages/
 |- providers/
 |- routes/
 |- services/
 |- my_app.dart
|- main.dart

```


## Building apk

**Step 1:**

Run the following commands in the terminal
For Android Build
```
flutter build apk
```
For iOS Build
```
flutter build ipa
```
**Step 2:**

For Android navigate to
```
Go to project\build\app\outputs\flutter-apk\digital_14.apk
```
For iOS navigate to
```
Go to project\build\ios\ipa\digital_14.ipa
```



## Running apk in Development Environment or Simulators

**iOS**


1. Start the terminal and cd to the project directory
2. Run command: `open -a Simulator` - It will open up the iOS device
3. Run Command: `flutter run` - It will start the app in the iOS Simulator


**Android**

1. Start the Android Studio
2. Run your preferred Android Device from Device Manager
3. Play the `Play` button from navigation bar which will start the app in the android simulator
# Digital 14 - Seat Geek API & Event Type Ahead Search

Type Ahead Searching App from Seat Geek API

### Requirements

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

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

**Dependancies**

To install dependancies one can go in `pubspec.yaml` and paste below content
and upgrade their project.

```
http: ^0.13.4                     # API Interactions
provider: ^6.0.3                  # Flutter State Management
go_router: ^4.2.2                 # Route Management 
intl: ^0.17.0                     # Date & Time Operations
hive: ^2.2.3                      # Offline Database support [To get liked 
									events in between app launch]
hive_flutter: ^1.1.0              # Offline Database support [To get liked 
									events in between app launch] 
                                    - Flutter Support
flutter_easyloading: ^3.0.5       #	Added to display show loader without 
									context
```
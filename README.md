# my_flutter_app

## Things I care about testing with flutter: (WIP)
1. [x] UI Components functionality and Theming
    * [x] table
    * [x] select
    * [x] Theme
    * [x] Navigation drawer
2. [x] Side Effects (IE. API calls and Async Actions)
    * [x] Basic get request to display data
    * [x] Get data with states, loading, error and data and handle them
3. [x] State management global and page
    * [x] Local component state
    * [x] global state
        -- Tested with Provider v3, worked great for our needs
4. [x] Routing and data passing between components
5. [x] Unit tests
6. [x] Integration tests
    * [x] do interactions
    * [x] take screenshots
7. [x] I18N
    * [x] very basic language map implementation.. needs to be refined
8. [ ] Desktop/Web app feasibility


## Testing:
* Unit & Widget: `flutter test test/Main_test.dart`
* Integration: `flutter drive --target=test_driver/app.dart`


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

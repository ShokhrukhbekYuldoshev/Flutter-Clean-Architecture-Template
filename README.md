# Project Name

This is a Flutter project that uses clean architecture, dependency injection with GetIt, and functional programming with Dartz. The state management is handled with BLoC pattern.

## Project Structure

The project is structured as follows:

-   `lib`: contains the main source code of the project.

    -   `main.dart`: the entry point of the application. It sets up the dependency injection, the localization, the theme, and the routes of the application.
    -   `app.dart`: the main widget of the application. It contains the `MainApp` widget that displays the UI of the application.

    -   `core`: contains the core functionality of the application.

        -   `network`: contains the `NetworkInfo` class that provides information about the network status.
        -   `utils`: contains the `InputConverter` class that converts user input to the desired format.
        -   `errors`: contains the `Failure` class hierarchy that represents the possible failures in the application.
        -   `di`: contains the `Injector` class that sets up the dependency injection with GetIt.

    -   `features`: contains the features of the application.
        -   `feature_a`: an example feature.
            -   `presentation`: contains the presentation layer of the feature.
                -   `blocs`: contains the `FeatureABloc` class that handles the state management of the feature.
                -   `screens`: contains the `FeatureAScreen` class that displays the UI of the feature.
                -   `widgets`: contains the `FeatureAWidget` class that displays a widget of the feature.
            -   `domain`: contains the domain layer of the feature.
                -   `entities`: contains the `FeatureAEntity` class that represents the entity of the feature.
                -   `repositories`: contains the `FeatureARepository` interface that defines the methods for accessing the data of the feature.
                -   `usecases`: contains the `FeatureAUsecase` class that defines the business logic of the feature.
            -   `data`: contains the data layer of the feature.
                -   `models`: contains the `FeatureAModel` class that represents the model of the feature.
                -   `datasources`: contains the `FeatureADatasource` interface that defines the methods for accessing the data source of the feature.
                -   `repositories`: contains the `FeatureARepositoryImpl` class that implements the `FeatureARepository` interface.
        -   `feature_b`: another example feature.
            -   ... (similar structure to feature_a)

-   `test`: contains the tests of the application.
-   `pubspec.yaml`: the configuration file of the application.

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository.
2. Run `flutter pub get` to install the dependencies.
3. Run the application with `flutter run`.

## Commands Used

[Dart: Generate Documentation](command:dart.task.dartdoc)
[Flutter: Generate Localizations](command:flutter.task.genl10n)
[Flutter: Clean Project](command:flutter.clean)
[Dart: New Project](command:dart.createProject)
[Flutter: New Project](command:flutter.createProject)

## Settings Used

-   `dart.debugExternalPackageLibraries`: Whether to mark external pub package libraries (including `package:flutter`) as debuggable, enabling stepping into them while debugging.
-   `dart.allowTestsOutsideTestFolder`: Whether to consider files ending `_test.dart` that are outside of the test directory as tests. This should be enabled if you put tests inside the `lib` directory of your Flutter app so they will be run with `flutter test` and not `flutter run`.
-   `dart.debugSdkLibraries`: Whether to mark Dart SDK libraries (`dart:*`) as debuggable, enabling stepping into them while debugging.
-   `dart.offline`: Whether to use the --offline switch for commands like 'pub get' and 'Flutter: New Project'.
-   `dart.flutterSdkPath`: The location of the Flutter SDK to use. If blank (or not a valid SDK), Dart Code will attempt to find it from the project directory, `FLUTTER_ROOT` environment variable and the `PATH` environment variable.

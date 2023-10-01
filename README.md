# Flutter Clean Architecture Template

This is a Flutter project that uses clean architecture, dependency injection with GetIt, and functional programming with Dartz. The state management is handled with BLoC pattern.

## Project Structure

The project is structured as follows:

-   `lib`: contains the main source code of the project.

    -   `main.dart`: the entry point of the application. It sets up the dependency injection, the localization, the theme, and the routes of the application.
    -   `app.dart`: the main widget of the application. It contains the `MainApp` widget that displays the UI of the application.

    -   `core`: contains the core functionality of the application.

        -   `constants`: contains the constants of the application.
            -   `assets.dart`: contains the assets of the application.
        -   `di/injector.dart`: contains the `Injector` class that sets up the dependency injection with GetIt.
        -   `errors/failures.dart`: contains the `Failure` class hierarchy that represents the possible failures in the
        -   `extensions`: contains the extensions of the application. - `string_extensions`: contains the `StringExtensions` extension that provides string manipulation methods.
            application.
        -   `network`:
            -   `network_info.dart`: contains the `NetworkInfo` class that checks the network connectivity of the application.
        -   `router/app_router.dart`: contains the `AppRouter` class that defines the routes of the application.
        -   `themes`: contains the themes of the application.

            -   `app_theme.dart`: contains the `AppTheme` class that defines the theme of the application.

        -   `utils`: contains the utility classes of the application.
            -   `input_converter.dart`: contains the `InputConverter` class that converts the input of the application.

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
2. Run `dart pub get` to install the dependencies.
3. Run the application with `flutter run`.

# Flutter Doctor Appointment App

A modern Flutter application to facilitate doctor appointment bookings. This project demonstrates scalable Flutter architecture, state management, REST API integration, and multi-platform support for mobile and web.

## Features

- **Book appointments with doctors**
- **User authentication and secure storage**
- **Beautiful, responsive UI**
- **Localization (multi-language support)**
- **Persistent storage and caching**
- **Splash screens, shimmer effects, and SVG support**
- **Clean code with BLoC/Cubit state management**
- **REST API integration using Dio & Retrofit**
- **Dependency injection with GetIt**
- **Ready for Android, iOS, Web, macOS, Linux**

## Tech Stack

- **Flutter** (Dart 3.8+)
- **State Management:** flutter_bloc, freezed
- **Networking:** dio, retrofit, pretty_dio_logger
- **Dependency Injection:** get_it
- **Localization:** intl, easy_localization
- **Persistence:** shared_preferences, flutter_secure_storage, cached_network_image
- **UI:** shimmer, shimmer_animation, flutter_svg, flutter_screenutil
- **Firebase:** firebase_core

## Getting Started

### Prerequisites

- Flutter SDK 3.8.1 or higher
- Dart SDK
- Android Studio/Xcode/VS Code
- (Optional) Firebase project setup for cloud features

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/TareqAlKushari/Flutter-Doctor-Appointment-App.git
   cd Flutter-Doctor-Appointment-App
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run code generation (if needed):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Configure assets:**
   - Place your images in `assets/images/`
   - Place your SVGs in `assets/svgs/`
   - Update `pubspec.yaml` if you add other asset folders

5. **Run the app:**
   ```bash
   flutter run
   ```

### Project Structure

- `lib/main.dart` — App entry point
- `lib/doc_app.dart` — Main app widget and routing
- `lib/core/` — Core utilities, themes, shared components
- `lib/features/` — Feature modules (authentication, booking, profile, etc.)
- `assets/` — Images and SVGs
- Platform folders: `android/`, `ios/`, `web/`, `macos/`, `linux/`

### Configuration

- **Localization:** Edit assets under the localization section in `pubspec.yaml`.
- **Splash Screen:** Edit `flutter_native_splash.yaml` and run `flutter pub run flutter_native_splash:create`.

## Scripts

- **Test:** `flutter test`
- **Lint:** `flutter analyze`

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## Acknowledgements

- [Flutter](https://flutter.dev/)
- [Bloc](https://bloclibrary.dev/#/)
- [Dio](https://pub.dev/packages/dio)
- [Easy Localization](https://pub.dev/packages/easy_localization)
- [Firebase](https://firebase.flutter.dev/)

---

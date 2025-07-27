# Quaran_APP

Quaran_APP is a Flutter mobile application designed to provide a comprehensive, interactive, and visually appealing Islamic experience. The app is structured following best practices for scalable development, with an emphasis on modularity and maintainability.

---

## Features

### 1. Quran Reader
- **Full List of Surahs:** Displays all 114 Surahs (chapters) of the Qur'an in Arabic.
- **Detailed Surah View:** Tap any Surah to view all its verses, beautifully formatted for readability.
- **Responsive Navigation:** Quickly jump to any Surah from the home screen.

### 2. Ahadeth (Hadith) Section
- **Hadith Collection:** Dedicated section for reading selected Hadiths (Prophet Muhammad’s sayings).
- **Easy Navigation:** Switch between Quran and Hadith at any time using the bottom navigation bar.

### 3. Sebha (Tasbeeh) Digital Counter
- **Digital Tasbeeh:** Use the virtual Sebha to keep count of your dhikr and tasbeeh easily.
- **Reset and Increment:** Intuitive controls for resetting and incrementing the counter.

### 4. Radio Streaming
- **Islamic Radio:** Listen to live Islamic radio streams directly from the app.
- **Seamless Switching:** Change sections without interrupting your listening experience.

### 5. Settings
- **Personalization:** Access to app settings for further personalization (future-friendly for theme/mode selection, etc.).

### 6. Custom Theming
- **Light and Dark Modes:** Elegant themes using custom colors and Google Fonts for a modern, clean UI.
- **Consistent Styling:** All screens follow unified design principles for a cohesive user experience.

---

## Architecture

**Clean Architecture Principles:**
- The project is designed with maintainability and scalability in mind, inspired by clean architecture philosophies:
  - **Separation of Concerns:** UI, business logic, and data are separated into different layers and files.
  - **Modular Widgets:** Each screen (Quran, Hadith, Sebha, Radio, Settings) is encapsulated as its own widget.
  - **Routing:** Centralized route management for easy navigation and future extensibility.
  - **Theming:** All theme data is managed in a dedicated file (`theme_data.dart`) for easy updates and consistency.

---

## Technologies Used

- **Flutter**: The core framework for cross-platform mobile development.
- **Dart**: Programming language for Flutter.
- **Google Fonts**: For beautiful Arabic and English typography.
- **Custom Assets**: Includes images and text files for Surah and Hadith content.
- **State Management**: Utilizes Flutter’s StatefulWidget and setState for UI updates.
- **Platform Support**: Android and iOS (via Flutter’s standard project structure).

---

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/antonious-emad/Quaran_APP.git
   cd Quaran_APP
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

---

## Project Structure

```
lib/
  ├── my_app.dart             # App entry point and routing
  ├── home_screen.dart        # Main navigation and tab bar
  ├── quaran_screen.dart      # Quran list and navigation
  ├── Sura_details_screen.dart# Detailed Surah view
  ├── ahadeth_screen.dart     # Hadith section
  ├── sebha_screen.dart       # Digital tasbeeh
  ├── radio_screen.dart       # Radio streaming
  ├── settings_screen.dart    # App settings
  └── theme_data.dart         # App-wide theming
assets/
  ├── images/                 # App icons and backgrounds
  └── files/                  # Surah text content
```

---

## Screenshots

![image alt](https://github.com/antonious-emad/Quaran_APP/blob/master/islami.jpg?raw=true)

---

## Contribution

Contributions are welcome! Please open an issue or pull request for suggestions or improvements.

---

## License

This project is licensed under the MIT License.

---

*Developed with ❤️ using Flutter.*

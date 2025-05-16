# BMI Calculator App 🧮

A modern and responsive **BMI Calculator** mobile application built using **Flutter** and structured using the **MVVM (Model-View-ViewModel)** architecture. This app calculates the user's Body Mass Index (BMI) based on inputted height, weight, and gender, and provides categorized health interpretations and personalized descriptions.

## 🚀 Features

- ✅ Calculate BMI instantly based on user input
- ✅ Custom interpretations for male and female users
- ✅ Clean and intuitive UI with theme switching support
- ✅ Dynamic gender, height, weight, and age selectors
- ✅ State management using `Provider`
- ✅ MVVM architectural pattern for maintainability and scalability

## 📸 Screenshots
![image](https://github.com/user-attachments/assets/8cf21c5d-8d0f-4ce9-b628-1b6f359f4bf3)    ![image](https://github.com/user-attachments/assets/bd4a36d5-4563-4cc7-8e76-266e3bf6af09)


## 🧠 Architecture

This project follows the **MVVM architecture**, with a clear separation of:
- **Model** → Represents the data (e.g., `BmiModel`)
- **View** → UI Layer (screens/widgets)
- **ViewModel** → Handles logic and state (`BMIProvider`)
- **Service** → Core business logic (`BmiService`)

## 📁 Folder Structure

lib/
│
├── core/
│ ├── constants/ # App constants (e.g., BMI categories)
│ └── theme/ # Light/Dark themes
│
├── features/
│ └── bmi_calculator/
│ ├── models/ # BmiModel
│ ├── services/ # BmiService (business logic)
│ ├── provider/ # BMIProvider (ViewModel)
│ ├── screens/ # Screens (Home, Result)
│ └── widgets/ # UI Components (Sliders, ResultBox, etc.)
│
└── main.dart # App entry point


## 🧑‍💻 Tech Stack

- Flutter (Dart)
- Provider (State Management)
- MVVM Architecture

## 📲 APK Download

[Download APK here](https://drive.google.com/file/d/1rscwanvIb_2nS8NX0M_9wU5m3zVtht0n/view?usp=drive_link)
)

### Steps to Run the App

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/jaimonvarghese/bmi-app.git
   cd bmi_app
   ```
2. **Install Dependencies:**
   ```sh
   flutter pub get
   ```
3. **Run the App:**
   ```sh
   flutter run
   ```

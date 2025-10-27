# Color Kick Quiz

A Flutter quiz app about identifying shoe colorways.

## Features

- Firebase authentication
- 10 quiz levels
- Score tracking
- Image-based questions
- Cross-platform support

## Requirements

- Flutter SDK >=3.1.5
- Firebase project with Email/Password authentication enabled

## Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/colorkickquiz_finalproject.git
cd colorkickquiz_finalproject
```

2. Install dependencies:

```bash
flutter pub get
```

3. Setup Firebase:

   - Create a Firebase project
   - Enable Email/Password authentication
   - Add `google-services.json` to `android/app/`
   - Add `GoogleService-Info.plist` to `ios/Runner/` (for iOS)

4. Run the app:

```bash
flutter run
```

## Project Structure

```
lib/
├── pages/          # Main screens (login, signup, home, quiz)
├── quistions/      # Question data for all 10 quizzes
├── quizitem/       # Quiz implementations
├── quizcomponents/ # Reusable components
├── Score/          # Score screens
├── tabpage/        # Tabs (home, score, profile)
└── main.dart       # App entry point
```

## Dependencies

```yaml
google_nav_bar: ^5.0.6
firebase_core: ^2.24.2
firebase_auth: ^4.15.3
percent_indicator: ^3.4.0
```

## How to Play

1. Sign up or login
2. Select a quiz from the home screen
3. View shoe images and select the correct colorway
4. Get immediate feedback
5. View your final score

## Quiz Structure

Each quiz contains 10 questions with the following format:

```dart
QuestionModel(
  'Jordan 1 Mid Panda',           // Shoe name
  'asset/quiz1/pic1.png',         // Image path
  "What is the colorway?",        // Question
  {
    "Panda": true,                // Correct answer
    "Black toe": false,
    "Shadow": false,
    "Chicago": false,
  }
)
```


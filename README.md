# budget_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

project Structure

lib/
│
├── main.dart
├── app.dart
│
├── core/                 # App-wide reusable things
│   ├── constants/
│   │   ├── app_colors.dart
│   │   ├── app_strings.dart
│   │   └── app_sizes.dart
│   │
│   ├── theme/
│   │   ├── app_theme.dart
│   │
│   ├── routing/
│   │   └── app_router.dart
│   │
│   ├── utils/
│   │   ├── validators.dart
│   │   └── formatters.dart
│   │
│   └── services/
│       ├── auth_service.dart
│       ├── storage_service.dart
│       └── analytics_service.dart
│
├── data/                 # MODEL + DATA LAYER
│   ├── models/
│   │   ├── user_model.dart
│   │   ├── expense_model.dart
│   │   └── budget_model.dart
│   │
│   ├── repositories/
│   │   ├── auth_repository.dart
│   │   ├── expense_repository.dart
│   │   └── budget_repository.dart
│   │
│   └── datasources/
│       ├── local/
│       │   └── local_db.dart
│       └── remote/
│           └── firebase_db.dart
│
├── features/             # FEATURE-FIRST (recommended)
│   ├── auth/
│   │   ├── view/
│   │   │   ├── login_view.dart
│   │   │   └── signup_view.dart
│   │   │
│   │   ├── viewmodel/
│   │   │   └── auth_viewmodel.dart
│   │   │
│   │   └── providers/
│   │       └── auth_providers.dart
│   │
│   ├── dashboard/
│   │   ├── view/
│   │   │   └── dashboard_view.dart
│   │   ├── viewmodel/
│   │   │   └── dashboard_viewmodel.dart
│   │   └── providers/
│   │       └── dashboard_providers.dart
│   │
│   └── expenses/
│       ├── view/
│       ├── viewmodel/
│       └── providers/
│
└── shared/
    ├── widgets/
    │   ├── app_button.dart
    │   ├── app_textfield.dart
    │   └── loading_widget.dart
    │
    └── responsive/
        └── responsive_handler.dart

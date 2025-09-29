# Flutter API Integration App

A Flutter mobile application demonstrating API integration, state management, and animations with a clean, structured architecture.

## Project Structure

lib/
├── main.dart
├── app/
│   └── app.dart
├── screens/
│   ├── login_screen.dart
│   ├── register_screen.dart
│   └── home_screen.dart
├── cubits/
│   ├── auth_cubit.dart
│   └── characters_cubit.dart
├── models/
│   ├── user_model.dart
│   └── character_model.dart
├── services/
│   └── api_service.dart
└── utils/
    ├── app_colors.dart
    └── app_validation.dart

## State Management

This app uses Cubit from the flutter_bloc package for state management.

### Implemented Cubits:
1. AuthCubit - Handles authentication state

- States: AuthInitial, AuthLoading, AuthSuccess, AuthFailure

- Methods: login(), register(), logout()

2. CharactersCubit - Manages character data from API

- States: CharactersInitial, CharactersLoading, CharactersLoaded, CharactersError

- Methods: fetchCharacters()

## Animations Implemented

1. Hero Animations
Logo Transition: Consistent hero tag 'app-logo' between login and register screens

Character Images: Unique hero tags for each character ('character-${character.id}')

2. Tween Animations
Fade-in with Slide: Title animations on login/register screens using TweenAnimationBuilder

Staggered List Items: Character cards animate in sequence with delayed timing

Smooth Opacity & Translation: Combined fade and slide effects

3. Custom Page Transitions
Slide Transitions: Horizontal slide when navigating between screens

Custom Route Builders: Smooth page transitions with PageRouteBuilder

4. Loading Animations
Circular Progress Indicators: During API calls and authentication

Pull-to-Refresh: Custom refresh indicator with themed colors

5. Interactive Animations
Button State Transitions: Smooth disabled/enabled state changes

Password Visibility Toggle: Instant icon transitions

## Features

✅ User authentication (Login/Register)

✅ Form validation with custom rules

✅ API integration with TMDB (The Movie Database)

✅ Clean architecture with separation of concerns

✅ Error handling and loading states

✅ Responsive UI design

✅ Pull-to-refresh functionality

## Dependencies

yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5

## API Used
The app integrates with The Movie Database (TMDB) API to fetch popular people/characters:

- Endpoint: https://api.themoviedb.org/3/person/popular

- Displays: Name, profile image, popularity score, and known works

## UI/UX Features

- Material Design 3 components

- Custom color scheme with consistent theming

- Form validation with user-friendly error messages

- Accessibility considerations

- Cross-platform compatibility

This app serves as a comprehensive example of modern Flutter development practices with clean architecture, effective state management, and engaging animations.













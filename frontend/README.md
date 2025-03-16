# PubStream Frontend

The web interface for PubStream - a private Flutter package manager. Built with Flutter Web, this frontend provides a modern, responsive interface for managing and browsing private Dart/Flutter packages.

## Features

- **Package Discovery**: Browse and search through your private package repository
- **Package Details**: View comprehensive package information, including:
  - README documentation
  - Version history
  - Changelog
  - Dependencies
  - Installation instructions
- **Responsive Design**: Optimized for both desktop and mobile viewing
- **Dark/Light Theme**: Automatic and manual theme switching
- **Developer Tools**: Built-in debugging and logging capabilities

## Prerequisites

- Flutter SDK >=3.4.0
- Dart SDK >=3.4.0
- Chrome/Edge/Firefox for web development

## Getting Started

### Development Setup

1. Install dependencies:
```bash
flutter pub get
```

2. Run the development server:
```bash
flutter run -d chrome
```

For production builds:
```bash
flutter build web
```

### Environment Configuration

Create `.json` files in the `.env` directory for different environments:

```json
// .env/dev.json
{
  "API_URL": "http://localhost:8080",
  "ENV": "development"
}
```

To run with specific environment:
```bash
flutter run --dart-define-from-file=.env/dev.json
```

## Project Structure

```
frontend/
├── lib/
│   ├── app/
│   │   ├── common/        # Shared widgets and utilities
│   │   ├── packages/      # Package-related features
│   │   ├── routes/        # Navigation and routing
│   │   └── home/         # Home page and related features
│   ├── main.dart         # Application entry point
│   └── app.dart          # Root application widget
├── assets/               # Images and static files
├── test/                # Test files
└── pubspec.yaml         # Project dependencies
```

## Key Dependencies

- `flutter_riverpod`: State management
- `go_router`: Navigation and routing
- `flex_color_scheme`: Theming
- `responsive_framework`: Responsive layout
- `flutter_markdown`: Markdown rendering
- `freezed`: Code generation for models

## Development Guidelines

### Code Generation

The project uses several code generators. After making changes to relevant files, run:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Testing

Run tests using:
```bash
flutter test
```

### Architecture

- **State Management**: Uses Riverpod for dependency injection and state management
- **Navigation**: Implements GoRouter for declarative routing
- **Styling**: Follows Material 3 design guidelines with Flex Color Scheme
- **Code Organization**: Feature-first architecture with shared components

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Style Guide

- Follow [Flutter's style guide](https://github.com/flutter/flutter/blob/master/docs/contributing/Style-guide-for-Flutter-repo.md)
- Use meaningful variable and function names
- Write comments for complex logic
- Keep files focused and single-responsibility

## Performance Considerations

- Use `const` constructors where possible
- Implement caching for network requests
- Optimize images and assets
- Use lazy loading for routes

## Troubleshooting

Common issues and solutions:

1. **Build Failures**
   - Run `flutter clean`
   - Delete `pubspec.lock` and run `flutter pub get`
   - Ensure all dependencies are compatible

2. **Web Performance**
   - Enable web renderer: `flutter run -d chrome --web-renderer canvaskit`
   - Check network calls in browser dev tools

## License

This project is licensed under the MIT License - see the LICENSE file for details.


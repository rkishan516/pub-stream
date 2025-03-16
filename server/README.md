# PubStream Server

The backend server for PubStream - a private Flutter package manager. Built with [Dart Frog](https://dartfrog.vgv.dev), this server handles package hosting, versioning, and distribution.

## Features

- **Package Management**: Store and serve private Dart/Flutter packages
- **Version Control**: Handle multiple versions of packages with semantic versioning
- **User Authentication**: Secure access control for package uploads and downloads
- **MongoDB Integration**: Robust storage for package metadata and user information
- **S3 Compatible Storage**: Efficient storage for package archives
- **Pub.dev Compatibility**: API compatible with pub.dev client

## Prerequisites

- Dart SDK >=3.0.0
- MongoDB
- S3-compatible storage (or mock S3 for development)
- Docker (optional)

## Development Setup

### Local Development

1. Install the Dart Frog CLI:
```bash
dart pub global activate dart_frog_cli
```

2. Start MongoDB and mock S3 services:
```bash
docker compose up mongo mock_s3
```

3. Run the development server:
```bash
cd server
dart_frog dev
```

### Docker Setup

Run the complete stack using Docker Compose:
```bash
docker compose up
```

## Environment Variables

- `DB_URI`: MongoDB connection string (default: `mongodb://localhost:27017/dart_pub`)
- `UPSTREAM`: Upstream pub server URL (default: `https://pub.dev`)
- `S3_ENDPOINT`: S3 endpoint URL for package storage

## Project Structure

```
server/
├── lib/
│   ├── stores/          # Data storage implementations
│   └── models/          # Data models and DTOs
├── routes/
│   └── api/            # API endpoint implementations
├── test/               # Test files
└── pubspec.yaml        # Project dependencies
```

## API Endpoints

- `GET /api/packages`: List available packages
- `GET /api/packages/{name}`: Get package metadata
- `GET /api/packages/{name}/versions/{version}`: Get specific package version
- `POST /api/packages/versions/newUpload`: Upload new package version

## Testing

Run tests using:
```bash
dart test
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

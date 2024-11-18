# PubStream: Your Private Flutter Package Manager

[![PubStream Logo](server/assets/logo.png)](https://github.com/rkishan516/pubstream)

PubStream is an open-source, private Flutter package manager.  It allows you to easily host and manage your private Flutter packages, providing a secure and efficient alternative to public repositories.

## Features

* **Private Package Hosting:** Securely store and manage your proprietary Flutter packages.  Control access and distribution effortlessly.
* **Dart Frog Backend:** Leveraging the power and efficiency of Dart Frog for a robust and performant backend.
* **Easy Integration:** Seamless integration with your Flutter projects using a familiar pubspec workflow.
* **User Authentication:**  Secure authentication to ensure only authorized users can access your private packages.
* **Version Management:** Supports package versioning to track changes and maintain different releases.
* **Open Source:** Contribute to the project and help shape the future of private package management for Flutter.


## Getting Started

**1. Clone the repository:**

```bash
git clone https://github.com/rkishan516/pubstream.git
```

**2. Setup and Run:**

This project uses Docker Compose for easy setup.  First, ensure you have Docker and Docker Compose installed. Then, navigate to the project directory and run:

```bash
cd pubstream
docker compose up -d
```

or

```bash
dart pub global activate dart_frog_cli
// ensure mongo and mock s3 servers are running
cd pubstream/server
dart_frog dev
```

## Upcoming Features

- [ ] Add flutter web frontend
- [ ] Add authentication cli + web
- [ ] Add support for Team
- [ ] Add Vs Code Extension to add package to current app
- [ ] Enhance UI + UX (Simple & Minimal)
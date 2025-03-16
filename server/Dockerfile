FROM dart:stable AS build

WORKDIR /app

# Create and set up shared package directory
WORKDIR /app/shared
COPY shared/pubspec.* ./
COPY shared/lib ./lib
RUN dart pub get

# Switch to server directory
WORKDIR /app/server
COPY server/pubspec.* ./
RUN dart pub get

# Copy remaining server files
COPY server ./

# Generate a production build
RUN dart pub global activate dart_frog_cli
RUN dart pub global run dart_frog_cli:dart_frog build

# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline
RUN dart compile exe build/bin/server.dart -o build/bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/server/build/bin/server /app/bin/
COPY --from=build /app/server/build/public /public/

# Start the server.
CMD ["/app/bin/server"]
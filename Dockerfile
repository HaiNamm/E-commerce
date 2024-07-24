# Stage 1: Build Flutter app
FROM cirrusci/flutter:stable AS flutter-builder

WORKDIR /app
COPY ./ /app
RUN flutter pub get
RUN flutter build web

# Stage 2: Set up Python environment
FROM python:3.8-slim-buster

# Install Poetry
RUN pip install poetry

# Set up work directory
WORKDIR /app

# Copy Python project files
COPY ./ /app

# Install Python dependencies
RUN poetry install

# Copy built Flutter web files from the previous stage
COPY --from=flutter-builder /app/build/web /app/static/web

# Expose port
EXPOSE 5000

# Entry point for the application
ENTRYPOINT ["poetry", "run"]
CMD ["gunicorn", "-b", "0.0.0.0:5000", "server:app"]
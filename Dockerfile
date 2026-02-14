# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all bot files
COPY . .

# Expose port for Flask (Render/Heroku need this)
EXPOSE 10000

# Start the bot
CMD ["python", "bot.py"]

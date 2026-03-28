FROM mcr.microsoft.com/playwright/python:latest
LABEL org.opencontainers.image.source=https://github.com/XCQ0607/dockerimage
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --root-user-action=ignore -r requirements.txt
RUN playwright install --with-deps chromium

COPY . .

EXPOSE 8000

CMD ["python", "main.py"]

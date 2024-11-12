FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5005

CMD ["uwsgi", "--http", ":5005", "--module", "app:app", "--processes", "4", "--stats", ":1717"]

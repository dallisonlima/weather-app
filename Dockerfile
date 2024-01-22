FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uwsgi", "--http", ":5005", "--wsgi-file", "app.py", "--callable", "app", "--processes", "4", "--stats", ":1717"]

EXPOSE 5005/tcp

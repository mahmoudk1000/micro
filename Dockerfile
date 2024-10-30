FROM python:3.9-slim AS production

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

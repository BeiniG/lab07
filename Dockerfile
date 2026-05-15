FROM python

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential 

COPY . .

RUN pip install --no-cache-dir -r app/requirements.txt

EXPOSE 5000
CMD ["python", "app/app.py"]

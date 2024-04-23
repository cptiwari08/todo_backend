FROM python:alpine3.19
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=my_password
ENV MYSQL_DATABASE=my_database
CMD [ "flask", "run", "--host=0.0.0.0", "--port=8000"]
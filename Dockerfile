FROM python:3.9
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
COPY ./app /app/app
CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","80"]
EXPOSE 80
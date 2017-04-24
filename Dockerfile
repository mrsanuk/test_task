FROM python:latest

RUN pip install Django gunicorn sslyze && \
    mkdir aplication && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
#ADD test_task/ /application
WORKDIR /application

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
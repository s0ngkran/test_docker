FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /project
COPY requirements.txt /project/
RUN pip install -r requirements.txt
COPY . /project/
CMD ["python", "manage.py", "runserver","0.0.0.0:3000"]
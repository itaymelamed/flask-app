FROM python:3.14.0rc1-alpine3.22
WORKDIR /app
RUN pip install flask requests
COPY app.py .
CMD python app.py
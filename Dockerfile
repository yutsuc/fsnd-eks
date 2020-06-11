# Use the python:stretch image as a source image
# Set up an app directory for your code
# Install needed Python requirements
# Define an entrypoint which will run the main app using the Gunicorn WSGI server
#   Gunicorn should be run with the arguments as follows: gunicorn -b :8080 main:APP


FROM python:stretch

WORKDIR /app
COPY requirements.txt /app
COPY main.py /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]
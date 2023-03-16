FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

# Creating the root directory of the project
RUN mkdir /application

# Set the working directory
WORKDIR /application

# Set python NOT to write *.pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# Set python output straight to the terminal
ENV PYTHONBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /application/requirements.txt
RUN pip install -r /application/requirements.txt

RUN apt-get update
RUN apt-get -y install vim

# copy project
COPY . /application/

EXPOSE 8000
# CMD python app.py

FROM python:3.8

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files in the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# port number where listening
EXPOSE 5000

# command to run the app
CMD ["python", "./app.py"]

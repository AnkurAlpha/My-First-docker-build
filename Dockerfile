# use the official python base image
FROM python:3.12-slim
# set the working directory
WORKDIR /app
# copy requirements file to container
COPY requirements.txt .
# then install stuffs from requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
# copy from working directory to docker container
COPY . .
# expose port 5000
EXPOSE 5000

# define environment variables
ENV DEBUG=False
ENV PORT=5000
ENV LOG_FILE=/data/logs/logs.txt

# execute the command to run the app
CMD ["python3","app.py"]
# we can use stuffs like gunicorn, don't execute python directly
# but as it is not anything for productions (just for learning
# so , it is okay )


# after writing the docker file , run :
# docker build -t flaskappllication:test .
# it will take the files frim current directory and build it


# to run :
# dcoker run -p 5000:5000 flaskappllication:test
# will export port 5000 to 5000

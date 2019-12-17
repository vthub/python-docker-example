#
# 1. Pick the base image
#    python:3 has pre-installed python and pip to make your life easier
#    To learn more about the image go to: https://hub.docker.com/_/python/
#    As of now "3" is a tag for python 3.8.0
#
FROM python:3

#
# 2. Install libraries that are required by your script
#
RUN pip install art Flask

#
# 3. Set your working directory
#
WORKDIR /app

#
# 4. Copy execution script from your local directory to the docker working directory
#
ADD index.py /app/

#
# 5. Expose port to allow incoming network connections
#    This is the same port as you specified in the index.py
#
EXPOSE 8080

#
# 6. Tell docker what to start when docker starts.
#
CMD [ "python", "/app/index.py" ]

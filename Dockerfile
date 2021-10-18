# Using lightweight alpine image
FROM python:3.10-alpine

# Installing packages
RUN apk update --no-cache
RUN pip install --no-cache-dir pipenv

# Defining working directory and adding source code
WORKDIR ./cashman
COPY Pipfile Pipfile.lock bootstrap.sh ./
COPY cashman ./cashman

# Install API dependencies
RUN pipenv install --deploy --ignore-pipfile

# Start app
EXPOSE 5000
ENTRYPOINT ["bash", "/usr/src/app/bootstrap.sh"]
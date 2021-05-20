# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8




WORKDIR /app

# Keeps Python from generating .pyc files in the container

# Turns off buffering for easier container logging


# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY . .



# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["python", "app.py"]

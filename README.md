
Put your Python code with inside docker container in PATH:

> /var/app/src

*Take care, your main Python file must be called: Application.py

##With docker-compose:
    
> docker-compose build && docker-compose up

##Without docker-compose:

> docker build -t xavijs-flask .

> docker run -d -p 5000:5000 xavijs-flask
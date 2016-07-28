
##With docker-compose:
    
> docker-compose build && docker-compose up

##Without docker-compose:

> docker build -t xavijs-flask .

> docker run -d -p 5000:5000 xavijs-flask
# My First docker build
this is just my first docker image from my earlier [flask project](https://github.com/AnkurAlpha/My-first-flask-project).


#### How to build :
Go into the repo and run :
```
docker build -t flaskappllication:test .
```

create and run a container:
```
dcoker run -p 5000:5000 flaskappllication:test
```


- things used :
```
Docker
blinker==1.9.0
click==8.2.0
Flask==3.1.1
Flask-SQLAlchemy==3.1.1
greenlet==3.2.2
itsdangerous==2.2.0
Jinja2==3.1.6
MarkupSafe==3.0.2
packaging==25.0
SQLAlchemy==2.0.41
typing_extensions==4.13.2
Werkzeug==3.1.3
```

###### Youtube link :
https://youtu.be/1yGBHJAKAf8

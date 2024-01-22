# flask-example

straight ahead flask container with regular-degular form inputs based on https://github.com/docker/awesome-compose/tree/master/flask

## Running as container

```
❯ docker compose up
```


Needs to rebuild the container after every code edit, which is a downer.

## Running raw

```
❯ cd app
❯ pip3 install -r requirements.txt
❯ flask --app app.py --debug run
```

Not quite hot-module, but instant reload on the server itself! Much better.
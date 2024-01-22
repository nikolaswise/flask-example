# flask-example

straight ahead flask container with regular-degular form inputs based on https://github.com/docker/awesome-compose/tree/master/flask

## Running as container

```
❯ docker compose up
```


Needs to rebuild the container after every code edit, which is a downer.

## Running raw

```
❯ pip3 install -r app/requirements.txt
❯ flask --app app/app.py --debug run
```

Not quite hot-module, but instant reload on the server itself! Much better.
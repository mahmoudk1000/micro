# Microservices

## Errors

### Problem #1

#### description

When dockeriing the microservice app. this happens

```
Traceback (most recent call last):
  File "/usr/local/bin/flask", line 5, in <module>
    from flask.cli import main
  File "/usr/local/lib/python3.9/site-packages/flask/__init__.py", line 5, in <module>
    from .app import Flask as Flask
  File "/usr/local/lib/python3.9/site-packages/flask/app.py", line 30, in <module>
    from werkzeug.urls import url_quote
ImportError: cannot import name 'url_quote' from 'werkzeug.urls' (/usr/local/lib/python3.9/site-packages/werkzeug/urls.py)
```

#### fix

Lock `Werkzeug` to version `2.2.2` in `requirements.txt`

# Dev Machine for the MIRACLE project

In order for this installation to work, this repo
must be located in the same directory as the miracle
project, arranged like shown below.

```bash
user% ls
build   miracle   miraclelog
```

To setup and run the miracle server run the following

```bash
cd .virtualenvs
workon miracle
cd /vagrant
fab setup
python manage.py runserver 0.0.0.0:8000
```

Now open up a browser on your machine and you should see
the miracle website at `127.0.0.1:8001`.

Based off of https://github.com/jackdb/pg-app-dev-vm

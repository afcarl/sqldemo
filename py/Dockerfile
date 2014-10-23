FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install -qy python-pip
RUN apt-get install -qy libpq-dev
RUN apt-get install -qy python-dev
RUN pip install Django
RUN pip install psycopg2
RUN django-admin startproject project
WORKDIR /project
ADD more_settings.py /project/more_settings.py
RUN cat more_settings.py >> project/settings.py
ADD syncdb.sh /project/syncdb.sh
RUN chmod +x syncdb.sh
CMD ./syncdb.sh

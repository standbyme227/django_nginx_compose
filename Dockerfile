FROM python:3.6.4
COPY . /srv/project


WORKDIR /srv/project/nginxdjango
RUN pip install -r ../requirements.txt

EXPOSE 8000
CMD ["uwsgi", "--ini", "/srv/project/.config/uwsgi.ini"]





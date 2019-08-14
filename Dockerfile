FROM python:3.6.4
COPY . /srv/project

RUN         apt-get -y update
RUN         apt-get -y dist-upgrade
RUN         apt-get -y install supervisor

WORKDIR /srv/project/nginxdjango
RUN pip install -r ../requirements.txt

#EXPOSE 8000
#CMD ["uwsgi", "--ini", "/srv/project/.config/uwsgi.ini"]

RUN cp /srv/project/.config/supervisor.conf /etc/supervisor/conf.d/

CMD supervisord -n




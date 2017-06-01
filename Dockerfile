FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install wget
RUN wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
RUN wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list

RUN apt-get update
RUN apt-get install mopidy
RUN pip install Mopidy-Moped
ADD ./mopidy.conf /root/.config/mopidy/mopidy.conf

EXPOSE 6600
EXPOSE 6680

CMD mopidy

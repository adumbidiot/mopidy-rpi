FROM resin/rpi-raspbian

RUN wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
RUN wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list

RUN apt-get update
RUN apt-get install mopidy

CMD mopidy

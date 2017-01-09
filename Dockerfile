FROM mono:4.6.2.16

RUN curl http://dist.opensimulator.org/opensim-0.9.0.0-rc2.tar.gz -s | tar xzf -
COPY Regions.ini /opensim-0.9.0.0-rc2/bin/Regions/Regions.ini
COPY OpenSim.ini /opensim-0.9.0.0-rc2/bin/OpenSim.ini
EXPOSE 9000
WORKDIR /opensim-0.9.0.0-rc2/bin

CMD [ "mono",  "./OpenSim.exe" ]

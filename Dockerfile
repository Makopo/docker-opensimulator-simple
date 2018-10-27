FROM mono:5.16

RUN curl http://dist.opensimulator.org/opensim-0.9.0.1.tar.gz -s | tar xzf -
ADD Regions.ini /opensim-0.9.0.1/bin/Regions/
ADD OpenSim.ini /opensim-0.9.0.1/bin/
EXPOSE 9000
WORKDIR /opensim-0.9.0.1/bin

CMD [ "mono",  "./OpenSim.exe" ]

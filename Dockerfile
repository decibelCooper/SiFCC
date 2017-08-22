FROM argonneeic/fpadsim:v1.4

ADD . /opt/SiFCCH

RUN sudo chown -R fpadsimuser:fpadsimuser /opt/SiFCCH

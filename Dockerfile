FROM argonneeic/fpadsim:v1.4

ENV WORKFLOW_PATH /opt/SiFCC

ADD . $WORKFLOW_PATH

RUN sudo chown -R fpadsimuser:fpadsimuser $WORKFLOW_PATH

WORKDIR $WORKFLOW_PATH

RUN sudo pacman -S --noconfirm \
	vim \
	openssh \
	procps-ng

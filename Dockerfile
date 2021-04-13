# docker image for robot and selenium based automation framework
FROM	python:3.8-alpine
ENV	command		$command
ENV screen_colour_depth 24
ENV screen_height 1024
ENV screen_width 2800
ENV chromium_version 86.0.4240.111-r0
ENV xvfb_version 1.20.7.3-r0

WORKDIR	/rsfw
COPY 	. /rsfw/
RUN 	apk add chromium==$chromium_version chromium-chromedriver=$chromium_version xvfb-run==$xvfb_version
RUN		python -m pip install -r /rsfw/requirements.txt
CMD		/rsfw/launch.sh

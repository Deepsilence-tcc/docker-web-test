FROM smebberson/alpine-nginx-nodejs
#ENV NODE_ENV=production
ARG VER
COPY . /data
WORKDIR /data

RUN cp ./docker_build/nginx.conf /etc/nginx/nginx.conf && \
	rm -rf /etc/nginx/conf.d && \
	cp -R ./docker_build/conf.d /etc/nginx && \

	mv ./index.html /usr/html/ && \
	cd / && rm -rf /data


EXPOSE 80

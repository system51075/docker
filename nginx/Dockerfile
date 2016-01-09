FROM system51075/toanpt3:idlogin_final
MAINTAINER Toanpt3 <toanpt3@vng.com.vn>
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN rm -rf  /etc/nginx/conf/vhost/360game.conf
# Copy a configuration file from the current directory
ADD 360game.conf /etc/nginx/conf/vhost/
EXPOSE 22 80
CMD ["/usr/bin/supervisord"]

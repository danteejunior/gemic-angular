FROM registry.redhat.io/rhel8/httpd-24@sha256:93b364062a5a0e058d6ad160ea395c42edb83b65866ed01400f7b4952c6ff115

USER root

COPY ./httpd.conf /etc/httpd/conf

COPY ./install.sh .

RUN chmod +x install.sh && ./install.sh

RUN rm install.sh

COPY ./.htaccess /var/www/html

USER default

LABEL io.openshift.tags="httpd,httpd24,nodejs,nodejs-10,angular,angular-9"

FROM registry.redhat.io/rhscl/httpd-24-rhel7:2.4-217

USER root

COPY ./httpd.conf /etc/httpd/conf

COPY ./install.sh .

RUN chmod +x install.sh && ./install.sh

RUN rm install.sh

COPY ./.htaccess /var/www/html

USER default

LABEL io.openshift.tags="httpd,httpd24,nodejs,nodejs-10,angular,angular-9"

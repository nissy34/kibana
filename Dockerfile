FROM kibana:7.6.2
USER root
RUN  yum install zip -y
USER kibana
COPY logtrail-7.6.2-0.1.31/kibana /kibana
RUN zip -r logtrail.zip /kibana
RUN kibana-plugin install file:///usr/share/kibana/logtrail.zip

FROM 50.50.65.240:5000/dyna-test/logstash:6.4.2
RUN chmod -R 777 /usr/share/logstash/data
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
USER root
ADD tibco.conf /usr/share/logstash/pipeline/
RUN chmod -R 777 /usr/share/logstash/pipeline/
RUN chown -R logstash:logstash /opt/logstash/pipeline/
USER 1001
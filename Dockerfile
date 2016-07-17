FROM rabbitmq:latest
MAINTAINER Mateusz Lisik <mateusz@lisik.it>

# Add scripts to image and give them executable attribute
ADD scripts /scripts
RUN chmod +x /scripts/*.sh

# Expose listen port
EXPOSE 5672
EXPOSE 15672

# MQTT
EXPOSE 1883
EXPOSE 8883

# Expose logs
VOLUME ["/var/log/rabbitmq"]

# Run launcher
ENTRYPOINT ["/scripts/launcher.sh"]
CMD [""]

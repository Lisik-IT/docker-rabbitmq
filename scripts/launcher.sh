#! /bin/bash
# RabbitMQ Starting Script


readonly LOCK_FILE=/tmp/RABBIT_CONFIGURED

echo "Starting RabbitMQ"

if [[ ! -f $LOCK_FILE ]]; then
    /scripts/configure.sh
    touch $LOCK_FILE
fi

rabbitmq-server
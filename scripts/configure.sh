#! /bin/bash
# Script for RabbitMQ Configuration
# Should be executed only once

readonly PLUGINS=$RABBITMQ_PLUGINS
readonly PLUGINS_DIR=/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins

echo "Performing sanity check"
if ! which rabbitmq-server >/dev/null; then
    echo "Rabbit isn't here. What the heck?"
    exit 1
fi

echo "Configuring official plugins"
source /scripts/official-plugins.sh

echo "Configuring unofficial plugins"
source /scripts/unofficial-plugins.sh

echo "Configuration complete"
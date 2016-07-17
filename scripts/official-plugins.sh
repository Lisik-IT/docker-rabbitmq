# Official rabbitmq plugins go here

if [[ " ${PLUGINS[@]} " =~ "rabbitmq_management" ]]; then
	rabbitmq-plugins enable rabbitmq_management
fi

if [[ " ${PLUGINS[@]} " =~ "rabbitmq_mqtt" ]]; then
	rabbitmq-plugins enable rabbitmq_mqtt
fi

if [[ " ${PLUGINS[@]} " =~ "rabbitmq_stomp" ]]; then
	rabbitmq-plugins enable rabbitmq_stomp
fi

if [[ " ${PLUGINS[@]} " =~ "rabbitmq_web_stomp" ]]; then
	rabbitmq-plugins enable rabbitmq_stomp
fi

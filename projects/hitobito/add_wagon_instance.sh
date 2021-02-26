#!/bin/bash

read -p "Enter hitobito instance name: " INSTANCE_NAME
git clone https://github.com/hitobito/development.git $INSTANCE_NAME && cd $INSTANCE_NAME
(cd app && git clone git@github.com:hitobito-bbt/hitobito.git)
(cd app && git clone git@github.com:hitobito-bbt/hitobito_$INSTANCE_NAME.git)
docker volume create hitobito_bundle
docker volume create hitobito_yarn_cache

if [ "$INSTANCE_NAME" = "jubla" ]; then
        echo "asdasd";
fi



if [ "$INSTANCE_NAME" == "jubla" ] || [ "$INSTANCE_NAME" == "pbs" ] || [ "$INSTANCE_NAME" == "cevi" ] || [ "$INSTANCE_NAME" == "pro_natura" ]; then
	(cd app && git clone git@github.com:hitobito-bbt/hitobito_youth.git)
fi

(cd app && docker-compose run rails 'rails db:seed wagon:seed')


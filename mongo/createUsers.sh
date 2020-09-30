#!/usr/bin/env bash

echo 'Creating application user and db'

mongo ${APP_MONGO_DB} \
        --host localhost \
        --port ${MONGO_PORT} \
        -u ${MONGO_ROOT_USER} \
        -p ${MONGO_ROOT_PASS} \
        --authenticationDatabase admin \
        --eval "db.createUser({user: '${APP_MONGO_USER}', pwd: '${APP_MONGO_PASS}', roles:[{role:'dbOwner', db: '${APP_MONGO_DB}'}]});"

echo 'Application user and db: created'


echo 'Creating clubstack user and db'

mongo ${APP_MONGO_DB} \
        --host localhost \
        --port ${MONGO_PORT} \
        -u ${MONGO_ROOT_USER} \
        -p ${MONGO_ROOT_PASS} \
        --authenticationDatabase admin \
        --eval "db.createUser({user: '${APP_MONGO_USER}', pwd: '${APP_MONGO_PASS}', roles:[{role:'dbOwner', db: '${CLUBSTACK_MONGO_DB}'}]});"

echo 'clubstack user and db: created'

# echo 'Creating staging user and db'

# mongo ${STAGING_MONGO_DB} \
#         --host localhost \
#         --port ${MONGO_PORT} \
#         -u ${MONGO_ROOT_USER} \
#         -p ${MONGO_ROOT_PASS} \
#         --authenticationDatabase admin \
#         --eval "db.createUser({user: '${STAGING_MONGO_USER}', pwd: '${STAGING_MONGO_PASS}', roles:[{role:'dbOwner', db: '${STAGING_MONGO_DB}'}]});"
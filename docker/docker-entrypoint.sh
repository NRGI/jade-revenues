cd /src

# copy nginx config corresponding to the environment
cp docker/nginx_config.conf /etc/nginx/nginx.conf

# setting papertrail credentials in the config file for rsyslog
envsubst < docker/log_files.yml > /etc/log_files.yml

# starting supervisor
supervisord -c /etc/supervisord.conf

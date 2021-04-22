#!/bin/sh

# config
[[ "$MY_PREF_INI" != "" ]] && wget -qO- $MY_PREF_INI | sed "s/port=[0-9]+$/port=$PORT/g" >/subconverter/pref.ini
sed -i -e "s/port=25500/port=$PORT/g" -e "s/api_access_token=password/api_access_token=$API_TOKEN/g" /subconverter/pref.ini
sed -i -e "s/update_ruleset_on_request=false/update_ruleset_on_request=true/g" /subconverter/pref.ini
sed -i -e "s/managed_config_prefix=http:\/\/127.0.0.1:25500/managed_config_prefix=$(PUBLIC_URL)/g" /subconverter/pref.ini

wget --no-check-certificate --no-cache --no-cookies -O /subconverter/profiles/pro.ini $MY_PRO_INI

# start
/subconverter/subconverter

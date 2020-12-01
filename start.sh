#!/bin/sh

# config
[[ "$MY_PREF" != "" ]] && wget -qO- $MY_PREF | sed "s/port=[0-9]+$/port=$PORT/g" >/subconverter/pref.ini
sed -i -e "s/port=25500/port=$PORT/g" -e "s/api_access_token=password/api_access_token=$API_TOKEN/g" /subconverter/pref.ini

cat <<EOF > /subconverter/profiles/auto.ini
[Profile]
target=auto
url=$(wget -qO- $MY_LINKS | tr "\n" "|")
EOF

# start
/subconverter/subconverter
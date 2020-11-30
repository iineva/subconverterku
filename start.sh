#!/bin/sh

# config
[[ "$MY_PREF" != "" ]] && wget -qO- $MY_PREF | sed "s/port=[0-9]+$/port=$PORT/g" >/subconverter/pref.ini
sed -i -e "s/port=25500/port=$PORT/g" -e "s/api_access_token=password/api_access_token=$API_TOKEN/g" /subconverter/pref.ini
urllinks="$(wget -qO- $MY_LINKS | tr "\n" "|")"

cat <<EOF > /subconverter/profiles/clash.ini
[Profile]
target=clash
url=$urllinks
EOF

cat <<EOF > /subconverter/profiles/quanx.ini
[Profile]
target=quanx
url=$urllinks
EOF

cat <<EOF > /subconverter/profiles/surge.ini
[Profile]
target=surge
surge_ver=4
url=$urllinks
EOF

cat <<EOF > /subconverter/profiles/v2ray.ini
[Profile]
target=v2ray
url=$urllinks
EOF

# start
/subconverter/subconverter
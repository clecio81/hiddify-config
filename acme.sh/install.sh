sudo apt-get install socat
sudo apt-get uninstall certbot
rm -rf /opt/hiddify/

    mkdir -p /opt/hiddify-config/acme.sh/lib/
    curl -L https://get.acme.sh| sh -s -- home /opt/hiddify-config/acme.sh/lib/ 
    # --config-home /opt/hiddify-config/acme.sh/lib/data \
    # --cert-home  /opt/hiddify-config/acme.sh/lib/certs

./lib/acme.sh --register-account -m my@example.com

mkdir -p ../ssl/
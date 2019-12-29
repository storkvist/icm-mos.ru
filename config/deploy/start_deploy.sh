#!/bin/sh -l

openssl enc -d -aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -salt -in config/deploy_id_rsa_enc -out config/deploy_id_rsa -k $DEPLOY_ENC_KEY -a
chmod 600 config/deploy_id_rsa

eval `ssh-agent -s`
ssh-add config/deploy_id_rsa

bundle install
bundle exec cap deploy

time=$(date)
echo ::set-output name=time::$time

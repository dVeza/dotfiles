#!/bin/bash

npm install -g @anthropic-ai/claude-code

cp ~/.dotfiles/.bash_aliases ~/.bash_aliases

echo "source ~/.bash_aliases" >> ~/.bashrc

source ~/.bash_aliases

function write_aws_saml_credentials {
    if [[ ! -z "${ROVER_AWS_SAML_HELPER_CREDENTIALS:-}" ]]; then
        mkdir -p $HOME/.aws
        echo $ROVER_AWS_SAML_HELPER_CREDENTIALS | base64 -d > $HOME/.aws/credentials
    fi
}
write_aws_saml_credentials

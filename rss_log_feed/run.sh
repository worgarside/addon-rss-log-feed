#!/usr/bin/with-contenv bashio

LOG_TTL_IN=$(bashio::config 'log_ttl')
SFTP_HOSTNAME_IN=$(bashio::config 'sftp_hostname')
SFTP_USERNAME_IN=$(bashio::config 'sftp_username')
SFTP_B64_PKEY_STRING_IN=$(bashio::config 'sftp_b64_pkey_string')

if [[ -z "${LOG_TTL-}" ]]
then
  export LOG_TTL=$LOG_TTL_IN
fi

if [[ -z "${SFTP_HOSTNAME-}" ]]
then
  export SFTP_HOSTNAME=$SFTP_HOSTNAME_IN
fi

if [[ -z "${SFTP_USERNAME-}" ]]
then
  export SFTP_USERNAME=$SFTP_USERNAME_IN
fi

if [[ -z "${SFTP_B64_PKEY_STRING-}" ]]
then
  export SFTP_B64_PKEY_STRING=$SFTP_B64_PKEY_STRING_IN
fi

python3 -u main.py

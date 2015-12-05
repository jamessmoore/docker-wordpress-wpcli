#!/bin/bash

wp core install --allow-root \
	--url="http://demo.ohmydocker.com:8080" \
        --title="Food Industry Self Insurance Fund of New Mexico" \
        --admin_user="fisifadmin" \
        --admin_password="testing123" \
        --admin_email="testing@webtechhq.com";

#!/bin/bash

wp core install --allow-root \
	--url="http://demo.example.com:8080" \
        --title="OhMy Website Title" \
        --admin_user="customadmin" \
        --admin_password="testing123" \
        --admin_email="testing@example.com";

#!/bin/bash
if [ ! -f authtoken ] || [ ! -f config.json ]; then
        echo "Either authtoken or config.json is missing. Please follow the README."
        exit 1
fi

TOKEN=$(cat authtoken)

GRAPH_URL=$(jq -r .endpoints.graph config.json)


curl -X PATCH -H "Authorization: Bearer $TOKEN" -H "Content-type: application/json" -d '<Put appRoles here in one line>' "https://graph.microsoft.com/v1.0/servicePrincipals/$1" | jq .

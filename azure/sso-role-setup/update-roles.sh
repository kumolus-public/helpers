#!/bin/bash
if [ ! -f authtoken ] || [ ! -f config.json ]; then
        echo "Either authtoken or config.json is missing. Please follow the README."
        exit 1
fi

TOKEN=$(cat authtoken)

GRAPH_URL=$(jq -r .endpoints.graph config.json)

#curl --data '$data' -X PATCH $GRAPH_URL/v1.0/servicePrincipals/$1 -H "Authorization: Bearer $TOKEN" -H 'Content-type: application/json' | jq .
echo "$GRAPH_URL/v1.0/servicePrincipals/$1"

curl -X PATCH -H "Authorization: Bearer $TOKEN" -H "Content-type: application/json" -d '{ "appRoles": [ { "allowedMemberTypes": [ "User" ], "description": "msiam_access", "displayName": "msiam_access", "id": "8af87ca7-4582-4025-96d7-3a34d7b677ac", "isEnabled": true, "origin": "Application", "value": null }, { "allowedMemberTypes": [ "User" ], "description": "Administrators Only", "displayName": "Admin", "id": "4f8f8640-f081-492d-97a0-caf24e9bc134", "isEnabled": true, "value": "Administrator" }, { "allowedMemberTypes": [ "User" ], "description": "Finance admin Only", "displayName": "Finance", "id": "8642d5fa-18a3-4245-ab8c-a96000c1a217", "isEnabled": true, "value": "Finance" } ] }' "https://graph.microsoft.com/v1.0/servicePrincipals/$1" | jq .

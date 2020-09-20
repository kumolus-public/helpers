## Prerequisite
- make sure `jq` is installed in your linux system else install it `sudo apt-get install jq`

## Setup steps

- In config file set the value for tenant, client ID & Client Secret
- For tenant, go to your Azure Active directory and copy the `Primary domain` value from Tenant information section
- For ClientID, click `App registrations` on side menu of active directory page and register a new app. Then copy its application / client id
- Click on that newly registered app, then click on `Certificates & secrets` on its side menu. Here you need to generate an app secret.
- Back to `application overview page` and again click on `api permission` link on side menu and add below listed permission
- Permissions require on this app:
  1. `Directory.AccessAsUser.All`
  2. `Directory.Read.All`
  3. `Directory.ReadWrite.All`

## SSO app setup

- Go to `Enterprise application` section in azure active directory blade, click on add new app.
- Search kumolus in search bar and add `kumolus app`
- Now click on that app and copy its application id.
- Now add this appliction ID in `get-endpoints.sh` script.

## Run scripts
- bash generate-token.sh  (for api token generation)
- bash get-endpoint.sh    (for getting sso app details)
- here in response there must be a section named `appRoles` with a json value like
  [
  {
    "allowedMemberTypes": [ "User" ], 
    "description": "msiam_access", 
    "displayName": "msiam_access", 
    "id": "8af87ca7-4582-4025-96d7-3a34d7b677ac", 
    "isEnabled": true, 
    "origin": "Application", 
    "value": null 
    }
   ]
  
- copy the id from this value and replace it in `update-roles.sh` line number 14.
- Run `bash update-roles.sh  (id copied from previous step)`  (for updating role in azure)

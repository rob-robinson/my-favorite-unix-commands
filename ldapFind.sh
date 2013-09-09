#!/bin/bash
# directory server name
server="ldaps://ldapserver.yourdomain.com"
# proxy distinguished name
proxy_dn="cn=Proxy Agent One,ou=YourAdminGroup,o=YourOrganization"
# proxy user password
proxy_p="allThePasswords"
# scope of search
search_base="o=yourdomain.com"
# accept one parameter from command line
query=$1

ldapsearch -x -LLL -H $server -D "$proxy_dn" -w "$proxy_p" -b "$search_base" "uid=$query" cn mail

# usage :
# ldapFind myUserName
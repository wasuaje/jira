#!/bin/bash
#UR="CRM Usuarios"
echo "<JiraJelly xmlns:jira=\"jelly:com.atlassian.jira.jelly.JiraTagLib\">" > addnewusers.xml

cat sap_users.txt | awk -F "|" '{print "<jira:CreateUser username=\""$2"\" password=\""$2"\" confirm=\""$2"\" fullname=\""$1"\" email=\""$2"@eluniversal.com\"""/>\n<jira:AddUserToGroup group-name=\""$3"\"/>"  }' >> addnewusers.xml

echo "<JiraJelly xmlns:jira=\"jelly:com.atlassian.jira.jelly.JiraTagLib\">" >> addnewusers.xml

cat  addnewusers.xml

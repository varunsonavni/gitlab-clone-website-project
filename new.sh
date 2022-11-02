PROJECTKEY="."
QGSTATUS='curl -s -u  SONAR_TOKEN: http://SONAR_URL:9000/api/qualitygates/project_status?projectKey=$PROJECTKEY | jq '.projectStatus.status' | tr -d '"''
if [ "$QGSTATUS" = "OK" ]
then
exit 0
elif [ "$QGSTATUS" = "ERROR" ]
then
exit 1
fi

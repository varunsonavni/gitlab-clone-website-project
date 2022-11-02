export QGSTATUS=`curl -s -u  $SONAR_TOKEN: http://18.232.146.98:9000/api/qualitygates/project_status?projectKey=new-group127_static-website-007_AYQy5EeRxITt09_C-Nlc | jq '.projectStatus.status' | tr -d '"'`
if [ "$QGSTATUS" = "ERROR" ]
  then
  echo "exit"
  exit 1
elif [ "$QGSTATUS" = "OK" ]
  then
  echo "ok"
  exit 0
fi

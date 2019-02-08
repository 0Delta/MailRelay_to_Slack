USER=`whoami`
LINE=`cat /home/${USER}/.mbox.line`

MSG=`mail -f -p | tail -n +${LINE} | tail -n +2`
JSON="{ \"text\": \"$MSG\" }"

RES=`curl -s -X POST -H 'Content-Type: application/json' -d "$JSON" $SLACK_WEBHOOK_API_URL`

#echo $RES
mail -f -p | wc -l > /home/${USER}/.mbox.line

# MailRelay_to_Slack

## Useage

```
## export APIURL
echo "export SLACK_WEBHOOK_API_URL=https://hooks.slack.com/services/XXXXXXXXX/XXXXXXXXX/XXXXXXXXXXXXXXXXXXXXXXXX" >> ./bash_profile
source ./bash_profile

## add cron schedule
echo "*/5  * * * *   <<USER>> /path/to/script" >> /etc/cron.d/mailforward

## restart cron service
service cron restart    # CentOS6
systemctl restart cron  # CentOS7
```

## Creater / Licenser

[0Delta](https://github.com/0Delta)

# CloudRadar.io Custom Scripts and Notifier
```diff
- Functional, but also a work in progress. PR's welcomed.
```

Set of scripts and notifier for custom CloudRadar.io checks. Existing features and scripts could not be found, so made an attempt at making a few of them myself. Use at your own risk as this is my first stab at any python coding. You might have to install python requests support. On a Debian 10 system, I had to to run the following:

```bash
apt-get install python-requests
```

At the heart of this library is the notify_cloudradar script that makes it a bit easier to post data to CloudRadar. Keep in mind the following:

- Token and checkname must match the custom check that you have setup in CloudRadar.io for the host
- json_data is optional. Sending a success_integer value of 0 or 1 is good enough

Example Format for Notifications:

```bash
./notify_cloudradar 'token' 'checkname' success_integer 'json_data'
```

```bash
./notify_cloudradar '123456' 'backup' 1 '{"target": "backup.example.com"}'
```
## Custom Checks

- dns_check <domain> <dns_server>
- galera_check <integer_of_cluster_total_required>
- ssl_check <domain> <integer_min_days_before_expire>
- csf_check

## Quickstart

Simply add checks like below to this packages cron file and then setup a cronjob to run that cron file every 5 minutes:

```bash
notify_cloudradar '123455' 'ns4dns' "$(dns_check google.com 1.2.3.4)"
notify_cloudradar '123453' 'galera' "$(galera_check 4)"
notify_cloudradar '123453' 'galera' "$(galera_check 4)"
```

Lets run the cron every 5 minutes. Good idea to set the custom check in CloudRadar.io to 10 minutes.

```
*/5 * * * * cd /root/cloudradar_checks/;./cron;
```

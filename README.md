# cloudradar_scripts
```diff
- WORK IN PROGRESS
```

Set of scripts and notifier for custom CloudRadar.io checks. Existing features and scripts could not be found, so made an attempt at making a few of them myself. Use at your own risk as this is my first stab at any python coding. You might have to install python requests support. On a Debian 10 system, I had to to run the following:

```bash
apt-get install python-requests
```

At the heart of this library is the notify_cloudradar script that makes it a bit easier to post data to CloudRadar. Keep in mind the following:

- Token and checkname must match the custom check that you have setup in CloudRadar.io for the host
- json_data is optional. Sending a success_integer value of 0 or 1 is good enough

Example Format:

```bash
./notify_cloudradar 'token' 'checkname' success_integer 'json_data'
```

```bash
./notify_cloudradar '123456' 'backup' 1 '{"target": "backup.example.com"}'
```
## Custom Checks

- dns_check <domain> <dns_server>
- galera_check <integer_of_cluster_total_required>

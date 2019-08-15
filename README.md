# cloudradar_scripts
```diff
- WORK IN PROGRESS
```

Set of scripts and notifier for custom CloudRadar.io checks. Existing features and scripts could not be found, so made an attempt at making a few of them myself. Use at your own risk as this is my first stab at any python coding. You might have to install python requests support. On a Debian 10 system, I had to to run the following:

```bash
apt-get install python-requests
```

At the heart of this library is the notify_cloudradar script that makes it a bit easier to post data to CloudRadar. An example format (status_integer must be 0 or 1): ``./notify_cloudradar 'token' 'checkname' status_integer 'json_data'``

```bash
./notify_cloudradar '123456' 'backup' 1 '{"target": "backup.example.com"}'
```

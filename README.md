# gandi-dyndns

> **Notice**
> 
> The development of this tool or myself are in no way involved with Gandi.net.

## Requirements

- Python (>= 2.7)
- Python `xmlrpclib`

## Gandi details

API Key (Apply here: https://www.gandi.net/admin/api_key)

## Usage

```shell
gandi-dyndns --api=APIKEY --domain=DOMAIN --record=RECORD
```

Currently very lazy but working mode. 
Note that there is a gandi bug, as where the program updates the zone and activates it, gandi does not show this through their webinterface.
I'll be contacting them to fix this.

See http://gerard.geekandfree.org/blog/2012/03/01/debarrassez-vous-de-dyndns-en-utilisant-lapi-de-gandi/

All communication is done over https.

If you have a Livebox, you can specify `--provider orange` to retrieve your public IP from your box (faster, better than online services).

You can turn the local cache on by appending `--cache`. This reduces api calls to gandi rpc because your domain data is not retrieved each time.

To get a list of all options:
```shell
gandi-dyndns --help
```

## crontab

Update DNS every 5 min:
```
*/5 * * * * cronjob.sh
```

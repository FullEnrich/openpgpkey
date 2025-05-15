
Recuperer le hash des clee:
```bash
gpg --with-wkd-hash -k XXXXXX@fullenrich.com
```


Exporter la clee:
```bash
gpg --export XXXXX@fullenrich.com > [HASH]
```

Install cron task for refresh every day keys
```bash
curl https://openpgpkey.fullenrich.com/install.sh | sh
```
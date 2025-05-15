
Recuperer le hash des clee:
```
gpg --with-wkd-hash -k XXXXXX@fullenrich.com
```


Exporter la clee:
```bash
gpg --export --armor XXXXX@fullenrich.com > [HASH]
```
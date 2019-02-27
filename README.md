# kea-dhcp
- https://hub.docker.com/r/widecamp1903/kea-dhcp
- とりあえずDockerizeしただけのシンプルイメージ
- MariaDB連携すると不安定になるのでオンメモリで運用することにした

## ESXi側
- `/etc/netplan/50-cloud-init.yaml` を編集してアドレスを固定
- mgmtのメトリックを一番小さくすること（デフォルトルート）

## デプロイ
```
% make run
```

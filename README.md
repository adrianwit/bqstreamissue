## Test runner setup

[E2e test runner installation](https://github.com/viant/endly/tree/master/doc/installation)


1) Start endly container (or install osx/linux version locally)

```bash
mkdir -p ~/e2e
mkdir -p ~/.secret

docker run --name endly -v /var/run/docker.sock:/var/run/docker.sock -v ~/e2e:/e2e -v ~/e2e/.secret/:/root/.secret/ -p 7722:22  -d endly/endly:latest-ubuntu16.04  
ssh root@127.0.0.1 -p 7722 ## password is dev
endly -v
```

2) Create a dedicated e2e testing project only with owner service account

Name google JOSN secret as ~/.secret/gcp-e2e.json 

3) Clone e2e test workflow

```bash
cd /e2e
git clone https://github.com/adrianwit/bqstreamissue

``` 

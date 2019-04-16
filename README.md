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
cd bqstreamissue/e2e

## to run all test run
endly
``` 


4) Run specific tests

a) [load_data](https://github.com/adrianwit/bqstreamissue/blob/master/e2e/regression/use_cases/001_load_data/description.txt)

```endly -t=test -i=load_data```


b) [recreated_dataset_stream_with_insertid](https://github.com/adrianwit/bqstreamissue/blob/master/e2e/regression/use_cases/002_recreated_dataset_stream_with_insertid/description.txt)

```endly -t=test -i=recreated_dataset_stream_with_insertid```


c) [recreated_dataset_stream_with_noinsertid](https://github.com/adrianwit/bqstreamissue/blob/master/e2e/regression/use_cases/003_recreated_dataset_stream_with_noinsertid/description.txt)

```endly -t=test -i=recreated_dataset_stream_with_noinsertid```

d) [recreated_table_stream_with_insertid](https://github.com/adrianwit/bqstreamissue/blob/master/e2e/regression/use_cases/004_recreated_table_stream_with_insertid/description.txt)

```endly -t=test -i=recreated_table_stream_with_insertid```


###### Big Query Driver Configuration

To control BigQuery insert behaviour check [Driver Configuration](https://github.com/viant/bgc)



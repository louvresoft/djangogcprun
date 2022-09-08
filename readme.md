###### Paso 1
Clonar repo a cloud shell
###### Paso 2
Construir imagen y meterla al container registry
`gcloud builds submit --tag gcr.io/$PROYECTO_ID/djangogcprun:latest`
##### Paso 3
Deployar app
`gcloud run deploy --image gcr.io/$PROYECTO_ID/djangogcprun:latest`


### Docs
https://cloud.google.com/community/tutorials/cicd-cloud-run-github-actions
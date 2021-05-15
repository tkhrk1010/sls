# sls
Docker for ServerlessFramework

# How to use
1. go to your serverless project directory

2. git clone this repository

3. go to sls/
   
4. create .env, and write aws credential
      
    copy env-sample and replace name and credential

    ※ confirm .env is added in .gitignore

5.  change container_name: serverless-your-project-name in docker-compose.yml
   
6.  execute "$make build" and "$make up"

    container: "serverless" will be built and start

7. go back to the project directory, use sls command

    ex)
    $ docker container exec serverless sls -v
    $ docker container exec serverless sls deploy


# References
https://qiita.com/seiichi_akiba/items/d42bda576f3fc6ac5117
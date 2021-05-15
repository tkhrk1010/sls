# sls
Docker for ServerlessFramework

# How to use
0. cd to your serverless project
   
1. clone this

2. create .env and write credential
      
    copy env-sample and replace name and credential

    ※ confirm .env is added in .gitignore

3. $make up

    container "serverless" will be built and start

4. In the project directory, use sls command

    ex)
    $ docker container exec serverless sls -v
    $ docker container exec serverless sls deploy


# References
https://qiita.com/seiichi_akiba/items/d42bda576f3fc6ac5117
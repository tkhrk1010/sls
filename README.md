# sls
Docker for ServerlessFramework

image size is 419MB

# How to use
1. go to your serverless project root

2. git clone this repository
   
3. create .env, and write aws credential
      
    copy env-sample and replace name and credential

    ※ confirm .env is added in .gitignore 

4.  copy docker-compose.yml to your project root
    
    change some content in copied docker-compose.yml according to comment

5. execute "$ docker-compose up -d serverless-YOUR_PROJECT_NAME" and start sls
   
6. use sls command

    ex)

    $ docker container exec serverless sls -v

    $ docker container exec serverless sls deploy

7. before commit, delete this .git  
    $ cd sls  
    $ rm -rf .git  
8. git add and commit

# How to test
1.  in sls/, execute "$ make up"

    container: "serverless" will be built and start

2. in sls/, execute "$ make test"

    if serverless version is displayed, it works.

3. in sls/, execute "$ make down"

    stop the container

# References
https://qiita.com/seiichi_akiba/items/d42bda576f3fc6ac5117
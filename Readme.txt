pip install flask
pip install flask_restful
pip install flask_pymongo
pip freeze > requirements.txt
pip install docker-compose

For Project To run:-
                    1) Build docker Image
                    docker-compose build
                    2) Then start container
                    docker-compose up -d
                    3) To see container running
                    docker ps
                    4) To stop container
                    docker-compose down

command:-
        docker-compose build      # For building docker-compose
        docker-compose up -d      # Start docker container in detached mode
        docker-compose up         # start docker container
        docker ps                 # For checking docker container
        docker-compose down       # stop docker container
        docker-compose -f down    # forcefully stop docker container
        docker rm -f ContainerID  # To forcefully remove container
        docker images

If You face error like this:-
                        1)ERROR: for dockerize_loginandregister-flaskrestfulapi_dockercompose_mongo_1  Cannot start service mongo: driver failed programming external connectivity on endpoint dockerize_loginandregister-flaskrestfulapi_dockercompose_mongo_1 (31d3201183f95cd27e133f67d2bbd656064ce9a5716ebef801374136b359afe3): Error starting userland proxy: listen tcp 0.0.0.0:27017: bind: address already in use

                          ERROR: for mongo  Cannot start service mongo: driver failed programming external connectivity on endpoint dockerize_loginandregister-flaskrestfulapi_dockercompose_mongo_1 (31d3201183f95cd27e133f67d2bbd656064ce9a5716ebef801374136b359afe3): Error starting userland proxy: listen tcp 0.0.0.0:27017: bind: address already in use
                          ERROR: Encountered errors while bringing up the project.

                         Answer:- Remove mongodb port number from docker-compose.yml file if you given any port number
                                        image: mongo:latest
                                        ports:
                                        - "27017:27017"      ### Remove this line if you put this code
for more:-
https://www.youtube.com/watch?v=qd1Ihy_djDc
https://www.youtube.com/watch?v=AAPOCB1U1kg
https://stackoverflow.com/questions/49499438/pymongo-errors-serverselectiontimeouterror-localhost27017-errno-111-connect
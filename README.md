# python-project

###Instructions:

* Clone the project by : </br>
    ```git clone git@github.com:shahafdoron/flask_docker.git```
* Build docker image by: </br>
    ```docker build . -t flask_docker```
* Run the container by:</br>
    ```docker run -d  -p 5000:5000 --name flask_docker flask_docker_2```
* Test Flask service by:
    ```
    curl localhost:5000
        {
            "message": "message content"
        }
    ```

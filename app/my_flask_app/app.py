from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

class HomePage(Resource):
    '''
    To get the home page context
    '''

    def get(self):

        response_body={
            "message": "message content",
        }

        app.logger.info("response body : {}".format(response_body))

        return response_body , 200 if None not in response_body.values() else 400

api.add_resource(HomePage,"/")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)


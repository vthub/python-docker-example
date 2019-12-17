from art import *

from flask import Flask
app = Flask(__name__) # Create Flask webapp


@app.route('/')
def hello_world():
    tprint("Hello from Docker") # This line prints to console
    return 'Hello from Docker!' # This line sends response to the requester

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080) # Continiously run Flask 

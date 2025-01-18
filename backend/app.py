import plaid
from plaid.api import plaid_api
from flask import Flask

configuration = plaid.Configuration(
    host=plaid.Environment.Sandbox,
    api_key={
        'clientId': 'lmao',
        'secret': 'lmao',
        'plaidVersion': '2020-09-14'
    }
)

api_client = plaid.ApiClient(configuration)
client = plaid_api.PlaidApi(api_client)


app = Flask(__name__)

@app.route("/")
def hello():
    return "hello"

app.run()

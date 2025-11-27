from flask import Flask
import socket

app = Flask(__name__)

@app.route("/")
def home():
    container_id = socket.gethostname()  # Docker container ID
    return f"<h1>Container ID: {container_id}</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

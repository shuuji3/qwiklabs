#!/usr/bin/env bash

# Google Cloud Pub/Sub: Qwik Start - Python | Qwiklabs - https://google.qwiklabs.com/games/1113/labs/4290

# create a virtual environment
sudo apt-get update
sudo apt-get install virtualenv -y
virtualenv -p python3 venv
source venv/bin/activate

# install pubsub client library
pip install --upgrade google-cloud-pubsub
git clone https://github.com/googleapis/python-pubsub.git
cd python-pubsub/samples/snippets

# create MyTopic
python publisher.py $GOOGLE_CLOUD_PROJECT create MyTopic

# list topics
python publisher.py $GOOGLE_CLOUD_PROJECT list

# create MyTopic subscription
python subscriber.py $GOOGLE_CLOUD_PROJECT create MyTopic MySub

# list topics
python publisher.py list-in-project

# publish messages
gcloud pubsub topics publish MyTopic --message "Hello"
gcloud pubsub topics publish MyTopic --message "Publisher's name is shuuji3"
gcloud pubsub topics publish MyTopic --message "Publisher likes to eat mochi"
gcloud pubsub topics publish MyTopic --message "Publisher thinks Pub/Sub is awesome"

# view messages
python subscriber.py $GOOGLE_CLOUD_PROJECT receive MySub

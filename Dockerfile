FROM python:3.10-slim-buster

WORKDIR /TamilanBotsZ

COPY requirements.txt ./

# Indha line dhaan Git install pannum
RUN apt-get update && apt-get install -y git

RUN pip install -r requirements.txt

CMD ["python3", "bot.py"]

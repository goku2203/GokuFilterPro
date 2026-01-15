# "buster" bathila "bookworm" use pandrom (Latest & Stable)
FROM python:3.10-slim-bookworm

WORKDIR /TamilanBotsZ

COPY requirements.txt ./

# Ippo update & git install correct-a work aagum
RUN apt-get update && apt-get install -y git

RUN pip install -r requirements.txt

CMD ["python3", "bot.py"]

FROM python:3.10-slim-bookworm

WORKDIR /TamilanBotsZ

COPY requirements.txt ./

RUN apt-get update && apt-get install -y git

RUN pip install -r requirements.txt

# --- INDHA LINE MUKKIYAM (Idhu dhaan unga code-a ulla podum) ---
COPY . .

CMD ["python3", "bot.py"]

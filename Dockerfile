FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip install --break-system-packages -r requirements.txt


COPY . .

CMD ["bash", "start.sh"]

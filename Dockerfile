FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl systemd sudo

# Install PufferPanel
RUN bash <(curl -s https://raw.githubusercontent.com/JishnuTheGamer/puffer-panel/main/install.sh)

# Install Ngrok
RUN curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
    echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && \
    apt update && apt install -y ngrok

# Configure and start
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/bin/bash", "/start.sh"]

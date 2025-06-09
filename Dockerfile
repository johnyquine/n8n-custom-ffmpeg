# Começa com a imagem oficial do n8n para modo fila
FROM n8nio/n8n:latest-queue

# Muda para o usuário root para poder instalar pacotes
USER root

# Atualiza a lista de pacotes e instala o FFmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Retorna para o usuário padrão do n8n por segurança
USER node

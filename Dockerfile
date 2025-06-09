# Começa com a imagem oficial do n8n na sua versão correta
FROM n8nio/n8n:1.95.3

# Muda para o usuário root para poder instalar pacotes
USER root

# ATUALIZAÇÃO: Usa o gerenciador de pacotes 'apk' do Alpine Linux
# O '--no-cache' é uma boa prática para manter a imagem pequena
RUN apk add --no-cache ffmpeg

# Retorna para o usuário padrão do n8n por segurança
USER node

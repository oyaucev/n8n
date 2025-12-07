FROM n8nio/n8n:latest

ENV N8N_USER_FOLDER=/data

# Install custom nodes
RUN npm install -g n8n-nodes-upload-post n8n-nodes-serpapi

EXPOSE 5678
RUN mkdir -p /data

CMD ["n8n"]

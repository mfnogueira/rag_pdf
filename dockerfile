FROM ollama/ollama:latest as ollama
FROM python:3.11-slim

WORKDIR /app

# Copiar Ollama
COPY --from=ollama /usr/bin/ollama /usr/bin/ollama

# Dependências
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# Script de inicialização modificado
RUN echo '#!/bin/bash\n\
ollama serve &\n\
sleep 15\n\
ollama pull deepseek-r1:14b\n\
sleep 5\n\
streamlit run --server.address=0.0.0.0 --server.port=8501 main.py' > start.sh

RUN chmod +x start.sh

# Expor portas necessárias
EXPOSE 8501
EXPOSE 11434

# Definir variáveis de ambiente para o Streamlit
ENV STREAMLIT_SERVER_PORT=8501
ENV STREAMLIT_SERVER_ADDRESS=0.0.0.0

CMD ["./start.sh"]
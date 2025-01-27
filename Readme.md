
```markdown
## Instalação Local

1. Clone o repositório:
```bash
git clone https://github.com/mfnogueira/rag_pdf.git

```

2. Crie e ative um ambiente virtual:
```bash
python -m venv .venv
source .venv/bin/activate  # Linux/Mac
.venv\Scripts\activate     # Windows
```

3. Instale as dependências:
```bash
pip install -r requirements.txt
```

4. Instale o modelo Ollama:
```bash
ollama pull deepseek-r1:14b
```

5. Inicie o serviço Ollama:
```bash
ollama serve
```

6. Em outro terminal, ative o ambiente virtual e execute o Streamlit:
```bash
.venv\Scripts\activate     # Windows
source .venv/bin/activate  # Linux/Mac
streamlit run main.py
```

A aplicação estará disponível em `http://localhost:8501`
```

Isso deixa mais claro que o Ollama precisa estar rodando em um terminal separado enquanto o Streamlit roda em outro.

```markdown
## Instalação via Docker

1. Clone o repositório:
```bash
git clone <seu-repositorio>
cd <sua-pasta>
```

2. Construa a imagem Docker:
```bash
docker build -t deepseek-app .
```

3. Para executar o container:
```bash
docker run -p 8501:8501 -p 11434:11434 deepseek-app
```

### Comandos Docker Úteis

```bash
# Listar containers em execução
docker ps

# Parar um container
docker stop <container_id>

# Remover uma imagem
docker rmi deepseek-app

# Executar em uma porta diferente (caso 8501 esteja em uso)
docker run -p 8502:8501 -p 11434:11434 deepseek-app

# Ver logs do container
docker logs <container_id>

# Remover todos os containers parados
docker container prune

# Acessar o terminal do container
docker exec -it <container_id> bash
```

A aplicação estará disponível em `http://localhost:8501` (ou na porta que você especificou)
```

Estes comandos ajudarão os usuários a:
1. Gerenciar containers
2. Resolver problemas comuns
3. Monitorar a aplicação
4. Fazer debug quando necessário
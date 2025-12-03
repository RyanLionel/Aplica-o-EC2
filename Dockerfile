# Imagem base
FROM python:3.10-slim

# Criar diretório no container
WORKDIR /app

# Copiar requirements e instalar
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar código
COPY . .

# Expor porta
EXPOSE 5000

# Comando de inicialização
CMD ["python", "app.py"]

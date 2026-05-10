FROM python:3.9-slim

WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente
COPY . .

# Exponer el puerto de Flask
EXPOSE 5000

# Comando para iniciar la aplicación (Asegúrate de que app.py use host '0.0.0.0' para que sea accesible desde fuera del contenedor)
CMD ["python", "app.py"]
# Usa un'immagine base Python
FROM python:3.9-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia i file di configurazione e il codice dell'applicazione
COPY . /app

# Installa le dipendenze
RUN pip install --no-cache-dir -r requirements.txt

# Espone la porta su cui l'applicazione ascolterà
EXPOSE 80

# Comando per avviare l'applicazione
CMD ["python", "-m", "cat.main"]

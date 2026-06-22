FROM python:3.12-slim
WORKDIR /app
COPY xauusd_bot_v2.tar.gz .
RUN tar -xzf xauusd_bot_v2.tar.gz --strip-components=1
RUN sed -i 's/httpx==0.26.0/httpx==0.25.2/' requirements.txt
RUN pip install -r requirements.txt
CMD ["python", "main.py"]

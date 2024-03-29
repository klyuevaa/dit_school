version: '3.9'
services:
  app-net:
    build: .
    environment:
      - HOSTNAME = localhost
      - PORT = 5000
    ports:
      - "5000:80"
    deploy:
      resources:
        limits:
          cpus: '1'
          memory: 1G    
   
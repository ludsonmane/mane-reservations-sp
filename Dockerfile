FROM node:20-alpine
RUN npm i -g serve@14
WORKDIR /app
RUN echo '<!doctype html><html lang="pt-BR"><head><meta charset="UTF-8"/><meta http-equiv="refresh" content="0;url=https://admin.mane.com.vc/"/><title>Redirecionando...</title></head><body><p>Redirecionando para <a href="https://admin.mane.com.vc/">admin.mane.com.vc</a>...</p></body></html>' > index.html
ENV PORT=8080
EXPOSE 8080
CMD sh -c "serve -s . -l tcp://0.0.0.0:${PORT}"

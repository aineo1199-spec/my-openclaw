FROM node:latest
WORKDIR /app
RUN npm install -g openclaw
EXPOSE 18789
CMD ["openclaw", "onboard", "--dangerously-disable-device-auth"]

FROM node:20-alpine
RUN npm install -g openclaw@latest
EXPOSE 10000
CMD ["openclaw", "onboard", "--port", "10000", "--dangerously-disable-device-auth"]

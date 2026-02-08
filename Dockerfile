FROM node:18-slim
WORKDIR /app
ENV NODE_OPTIONS="--max-old-space-size=400"
RUN npm install -g openclaw
EXPOSE 10000
CMD ["openclaw", "onboard", "--port", "10000", "--dangerously-disable-device-auth"]

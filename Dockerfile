# Node.js এর হালকা ভার্সন ব্যবহার
FROM node:18-slim

# প্রয়োজনীয় টুলস ইনস্টল করা
RUN apt-get update && apt-get install -y python3 make g++ && rm -rf /var/lib/apt/lists/*

# সরাসরি openclaw ইনস্টল করা
RUN npm install -g openclaw

# পোর্ট এবং এনভায়রনমেন্ট সেট করা
ENV PORT=10000
EXPOSE 10000

# সরাসরি কমান্ড রান করা (এভাবে দিলে মডিউল খুঁজে না পাওয়ার ভয় থাকে না)
CMD ["openclaw", "onboard", "--port", "10000", "--dangerously-disable-device-auth"]

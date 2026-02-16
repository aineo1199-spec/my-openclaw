# Node.js 18 slim ব্যবহার করা হচ্ছে মেমোরি বাঁচাতে
FROM node:18-slim

# গ্লোবাল এনভায়রনমেন্ট পাথ সেট করা
ENV PATH /usr/local/lib/node_modules/openclaw/bin:$PATH

# OpenClaw ইনস্টল করা
RUN npm install -g openclaw

# Render-এর জন্য পোর্ট সেট করা
EXPOSE 10000

# সরাসরি গ্লোবাল কমান্ডটি কল করা
CMD ["openclaw", "onboard", "--port", "10000", "--dangerously-disable-device-auth"]

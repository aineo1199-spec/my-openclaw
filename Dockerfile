FROM node:18-slim

# মেমোরি এবং পাথ কনফিগারেশন
ENV NODE_OPTIONS="--max-old-space-size=450"
ENV PATH /usr/local/bin:$PATH

# সরাসরি openclaw ইনস্টল করা
RUN npm install -g openclaw

# Render-এর জন্য পোর্ট এক্সপোজ করা
EXPOSE 10000

# সঠিক কমান্ড যা কোনো পাথ এরর দেবে না
CMD ["openclaw", "onboard", "--port", "10000", "--dangerously-disable-device-auth"]

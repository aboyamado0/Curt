FROM node:20-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    git \
    ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/Ainz-devs/OVL-MD-V2.git /ovl_bot

WORKDIR /ovl_bot

RUN npm install

EXPOSE 8000

CMD ["npm", "run", "Ovl"]

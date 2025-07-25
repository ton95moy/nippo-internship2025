# nippo-internship2025
2025年度インターンシップリポジトリ

# サーバーの起動

# はじめて

1. docker compose up -d
2. bash setup_db.sh
3. docker compose exec server pnpm install
4. docker compose exec server pnpm dev

# 2度目以降

1. docker compose up -d
2. docker compose exec server pnpm dev

# アプリに接続

ブラウザで`localhost:3000`に接続

![todolist](https://github.com/user-attachments/assets/7aacfb05-715e-4b36-9d1c-ae456219b9a8)

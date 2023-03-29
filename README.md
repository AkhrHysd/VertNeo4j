# Neo4j PoC Project
このプロジェクトは、Neo4jを使用したグラフデータベースの実証プロジェクト（PoC）用のリポジトリです。Dockerを使用してNeo4jのインスタンスを簡単に立ち上げることができます。

## 前提条件
- Docker Desktopのインストール
- Docker Composeのインストール
## セットアップ
このリポジトリをクローンします。
```zsh
git clone https://github.com/AkhrHysd/VertNeo4j.git
```
クローンしたリポジトリに移動します。
```zsh
cd VertNeo4j
```
Docker Composeを使用してNeo4jのインスタンスを起動します。
```zsh
docker-compose up -d
```
これで、Neo4jのインスタンスがDockerコンテナ内で実行されます。

## Neo4jへの接続
Neo4j Browserを使って、http://localhost:7474にアクセスします。デフォルトのユーザ名とパスワードは以下のとおりです。

ユーザ名: neo4j
パスワード: testpassword

## プロジェクトの停止と削除
Docker Composeを使用して、Neo4jのインスタンスを停止および削除することができます。

インスタンスを停止します。
```zsh
docker-compose down
```
必要に応じて、Dockerボリュームを削除してデータを消去します。
```zsh
docker volume rm <リポジトリ名>_neo4j-data
```
これでNeo4jの環境が完全に削除されます。
#!/bin/bash

# マイグレーションファイルのパスを変数に設定します
MIGRATION_FILE_PATH="./migration/migration-file.cypher"

# マイグレーションファイルをコンテナにコピーします
docker cp $MIGRATION_FILE_PATH vertneo4j-neo4j-1:/var/lib/neo4j/import/

# コンテナ内でマイグレーションを実行します
docker exec vertneo4j-neo4j-1 neo4j-admin load --from=/var/lib/neo4j/import/migration-file.cypher --database=neo4j
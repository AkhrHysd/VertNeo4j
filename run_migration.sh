#!/bin/bash

# マイグレーションファイルのパスを変数に設定します
MIGRATION_FILE_PATH="./migration/migration-file.cypher"

# マイグレーションファイルをコンテナにコピーします
docker cp $MIGRATION_FILE_PATH neo4j_container:/var/lib/neo4j/import/

# コンテナ内でマイグレーションを実行します
docker exec neo4j_container neo4j-admin load --from=/var/lib/neo4j/import/migration-file.cypher --database=neo4j
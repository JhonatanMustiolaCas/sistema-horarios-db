#!/bin/bash

queries=$(find ./setup -name *.sql | sort -h | xargs find)

if [[ -z "${queries[@]}" ]]; then
    return 0
    exit
fi

for query in ${queries[@]}; do
    output=$(mysql --defaults-extra-file=./config.cnf -s -N <$query)
    if [ $? -eq 0 ]; then
        echo "Query $query executed successfully"
    fi
done

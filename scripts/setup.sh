#!/usr/bin/env sh
DATABASE_PATH="${PWD}/backend/data"
TEST_DATA_BASE="$DATABASE_PATH/test.db3"
RUN_DATA_BASE="$DATABASE_PATH/user.db3"

if [ ! -f "$TEST_DATA_BASE" ]; then
    echo "Creating $TEST_DATA_BASE..."
    touch $TEST_DATA_BASE
    echo "Preparing $TEST_DATA_BASE..."
    tools/sqlite/sqlite3 $TEST_DATA_BASE < database.sql
fi
if [ ! -f "$RUN_DATA_BASE" ]; then
    echo "Creating $RUN_DATA_BASE..."
    touch $RUN_DATA_BASE
    echo "Preparing $RUN_DATA_BASE..."
    tools/sqlite/sqlite3 $RUN_DATA_BASE < database.sql
fi

echo "All set!!!"
#!/usr/bin/env bash

main/bin/console server:stop -q 127.0.0.1:8000;
expected_result/bin/console server:stop -q 127.0.0.1:8001;
actual_app/bin/console server:stop -q 127.0.0.1:8002;

sleep 0.1;

main/bin/console server:start 127.0.0.1:8000;
expected_result/bin/console server:start 127.0.0.1:8001;
actual_app/bin/console server:start 127.0.0.1:8002;

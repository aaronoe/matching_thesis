#!/usr/bin/env bash

cd seminars-web/public
python3 -m http.server 1234 &
python -m webbrowser http://localhost:1234
cd ../..
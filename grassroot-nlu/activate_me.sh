#!/bin/sh

export FLASK_APP=start_application.py
flask run > output.txt 2>&1 &
python trainer.py > training_output.txt 2>&1 &
python checker.py > system_status.txt 2>&1 &
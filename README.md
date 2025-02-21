# Submission Reminder App

This repository contains the "Submission Reminder App" which helps to remind students about their assignment submissions.

## How to Run

1. Clone this repository.
2. Run the `create_environment.sh` script to set up the environment.
   - This will create the directory structure and populate the necessary files.
3. Use the `startup.sh` script to run the reminder app.
4. The `reminder.sh` script checks the submissions and sends reminders to students who have not submitted their assignments.

## Files:
- `create_environment.sh`: Script to set up the environment.
- `reminder.sh`: Script that checks submission statuses and sends reminders.
- `functions.sh`: Contains helper functions for checking submissions.
- `config.env`: Configuration file containing environment variables.
- `submissions.txt`: Contains a list of student submissions and their statuses.


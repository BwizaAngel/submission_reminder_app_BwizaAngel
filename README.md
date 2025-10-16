Submission Reminder — Summary

This project includes two Bash scripts to help manage student assignment submissions efficiently.

create_environment.sh – sets up a folder named submission_reminder_{YourName} with subfolders (config, scripts, submissions) and required files.

copilot_shell_script.sh – asks for an assignment name and checks the submissions folder to see which students haven’t submitted their work.

Usage

Run create_environment.sh to set up the environment.

Add student files in submissions/.

Run copilot_shell_script.sh and enter the assignment name to view missing submissions.

Git Workflow

Work in a feature branch (e.g. feature/setup) and merge into main when done.
After merging, only these files should remain in the main branch:
create_environment.sh
copilot_shell_script.sh
README.md


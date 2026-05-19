# Attendance Tracker Project Setup explainining what the script does

1. I Created a Parent Directory which asks you for a name and builds a custom project folder with this structure:
```
attendance_tracker_[your-name]/
├── attendance_checker.py     # Main Python script
├── helpers/
│   ├── assets.csv            # Data file
│   └── config.json           # Settings file
└── reports/
    └── reports.log           # Log file for tracking errors/info

```


2. Updates Settings structuring :It asks if you want to change the default attendance limits.
 If you say yes (y), you can type in new custom numbers.
 If you say no (n), it keeps the defaults: Warning at 75% and Failure at 50%.


3. Emergency Backup (Ctrl+C): If you cancel the script while it's running, a safety feature automatically bundles your folder into a `.zip` archive file and cleans up the workspace so no loose files are left behind.

---

# Now How to Run It

1. Give the script permission to run:

```bash
   chmod +x script.sh

```

2. Run the script:
```bash
./script.sh

```


3. Follow the on-screen prompts to enter your project name and set up your attendance limits.

---

```

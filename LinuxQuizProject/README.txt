📘 LINUX QUIZ PROJECT – README

👨‍💻 TEAM MEMBERS:
- Aarohi Dixit
- Aadhya Arora
- Anshika 
- Dollsy 

---

🎯 PROJECT OVERVIEW:

This is a Linux-based terminal quiz project developed using Shell scripting and MySQL.  
It allows:
- Admins to manage quiz questions (Add / View / Delete)
- Users to attempt a 5-question random quiz

The interface is made using `dialog` command for a clean and interactive UI.

---

🔧 TECHNOLOGIES USED:
- Bash Shell Scripting (main.sh, admin_panel.sh, user_panel.sh)
- MySQL CLI for backend DB
- `dialog` for user interface
- Linux/Ubuntu terminal

---

📂 FILES INCLUDED:
- `main.sh` → Entry point with welcome box + role menu
- `admin_panel.sh` → Admin functionality (Insert, View, Delete)
- `user_panel.sh` → Random quiz logic with scoring
- `setup_quiz.sql` → Creates `quizdb` database and `questions` table
- `README.txt` → This file 😎

---

🛠 HOW TO RUN:
1. Open terminal in project folder
2. Give execute permissions:
   chmod +x *.sh

3. Setup DB (if not already):
   mysql -u root -p < setup_quiz.sql

4. Run project:
   ./main.sh

---

✅ HIGHLIGHTS:
- Real-time MySQL + Shell integration
- Clean UI using dialog boxes
- Quiz questions chosen randomly from database
- Error-handling for empty DB entries



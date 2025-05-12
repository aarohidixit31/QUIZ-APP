# 🧠 Quiz APP – Shell Script + MySQL

> A console-based Linux quiz management system built with **Bash Shell Scripting** and **MySQL**, designed for education, automation, and hands-on Linux practice.

![Linux](https://img.shields.io/badge/platform-linux-informational)
![Bash](https://img.shields.io/badge/language-bash-brightgreen)
![MySQL](https://img.shields.io/badge/database-mysql-orange)
![License](https://img.shields.io/badge/license-MIT-blue)

---

## 📌 Project Overview

The **Quiz App** is a terminal-based application that automates the process of conducting and evaluating quizzes. It supports two main roles:
- **Admin:** Add, view, and delete quiz questions.
- **User:** Attempt quizzes and get instant feedback with real-time scoring.

The system is built using:
- ✅ Bash Shell for scripting and logic control  
- ✅ MySQL for storing questions, answers, and scores  
- ✅ Linux terminal interface (fully offline, lightweight)

---

## 🎯 Features

- 🔐 Role-based access: Admin vs User  
- 📥 Add / delete / view questions (Admin panel)  
- 🧾 Randomized MCQ quizzes (User panel)  
- 📊 Real-time score calculation and feedback  
- 📁 Data logging via text files and MySQL  
- 💾 Secure and persistent storage via MySQL  
- 🧪 Input validation and error handling  

---

## 🛠️ Technologies Used

| Component        | Tool                    |
|------------------|-------------------------|
| Scripting        | Bash (Shell Script)     |
| Database         | MySQL / MariaDB         |
| OS Compatibility | Linux (Ubuntu/Fedora)   |
| GUI Support      | Dialog / Zenity (future)|

---

## 📂 File Structure

```
├── quiz_main.sh         # Entry point for the system
├── admin_panel.sh       # Admin: Add/Delete/View Questions
├── user_panel.sh        # User: Take Quiz
├── db_connection.sh     # MySQL credentials
├── logs/
│   └── quiz_log.txt     # Local logs
├── data/
│   └── temp_answers.txt # Temp user responses
└── README.md            # This file
```

---

## 🚀 How to Run

### Step 1: Install MySQL Server
```bash
sudo apt install mysql-server
```

### Step 2: Clone This Repository
```bash
git clone https://github.com/aarohi-dixit/linux-quiz-management.git
cd linux-quiz-management
```

### Step 3: Create Database & Tables
```sql
CREATE DATABASE quizdb;

USE quizdb;

CREATE TABLE questions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  question_text TEXT,
  option1 VARCHAR(255),
  option2 VARCHAR(255),
  option3 VARCHAR(255),
  option4 VARCHAR(255),
  correct_option INT
);

CREATE TABLE scores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100),
  score INT,
  timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);
```

### Step 4: Give Permission to Scripts
```bash
chmod +x *.sh
```

### Step 5: Run the App
```bash
./quiz_main.sh
```

---

## 📸 Screenshots

*(Add your screenshots in an `assets/` folder and link here)*  
> ![Admin Panel](assets/admin-panel.png)  
> ![User Quiz](assets/user-panel.png)

---

## 🔒 Security Notes

- Use `.env` or external config for database passwords in production.
- SQL injection protections via input validation can be improved.

---

## 📚 References

- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [Bash + SQL Tutorial (Baeldung)](https://www.baeldung.com/linux/bash-script-mysql)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
- [Linux Man Pages](https://man7.org/linux/man-pages/)
- [Zenity GUI Tool](https://help.gnome.org/users/zenity/stable/)
- [Dialog CLI GUI](https://invisible-island.net/dialog/)
- [Whiptail Man Page](https://linux.die.net/man/1/whiptail)

---

## ✨ Future Scope

- GUI integration using Dialog / Zenity  
- Timed quizzes and difficulty levels  
- Category/topic-based filtering  
- Leaderboard and attempt tracking  
- Cloud backup and centralized access  
- Multi-user login system  

---

## 👩‍💻 Author

Made with 💻 and ❤️ by **Aarohi Dixit**  
📫 GitHub: [@aarohi-dixit](https://github.com/aarohi-dixit)  
🔗 LinkedIn: [Aarohi Dixit](https://linkedin.com/in/aarohidixit)

---

## 📄 License

This project is licensed under the **MIT License** – use it freely for learning, projects, or enhancements!

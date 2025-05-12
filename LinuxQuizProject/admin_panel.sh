#!/bin/bash

DB_USER="root"
DB_PASS="root123"  # <-- change this to your actual password
DB_NAME="quizdb"

while true; do
  clear
  echo "============================================"
  echo "               👩‍💻 ADMIN PANEL               "
  echo "============================================"
  echo "1. Add a New Question"
  echo "2. View All Questions"
  echo "3. Delete a Question"
  echo "4. Exit"
  echo "============================================"
  read -p "Enter your choice [1-4]: " choice

  case $choice in
    1)
      read -p "Enter Question: " question
      read -p "Option 1: " opt1
      read -p "Option 2: " opt2
      read -p "Option 3: " opt3
      read -p "Option 4: " opt4
      read -p "Correct Option Number (1-4): " correct
      mysql -u $DB_USER -p$DB_PASS -D $DB_NAME -e "INSERT INTO questions (question_text, option1, option2, option3, option4, correct_option) VALUES ('$question', '$opt1', '$opt2', '$opt3', '$opt4', $correct);"
      echo "✅ Question Added!"
      read -p "Press Enter to continue..." ;;
    2)
      echo "📋 All Questions:"
      mysql -u $DB_USER -p$DB_PASS -D $DB_NAME -e "SELECT id, question_text FROM questions;"
      read -p "Press Enter to continue..." ;;
    3)
      read -p "Enter Question ID to delete: " qid
      mysql -u $DB_USER -p$DB_PASS -D $DB_NAME -e "DELETE FROM questions WHERE id=$qid;"
      echo "🗑️ Question Deleted!"
      read -p "Press Enter to continue..." ;;
    4)
      echo "Exiting Admin Panel..."
      exit 0 ;;
    *)
      echo "Invalid option. Try again."
      read -p "Press Enter to continue..." ;;
  esac
done

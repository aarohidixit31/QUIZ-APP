#!/bin/bash

DB_USER="root"
DB_PASS="root123"
DB_NAME="quizdb"

score=0
total=0

questions=$(mysql -u $DB_USER -p$DB_PASS -D $DB_NAME -sN -e "SELECT id FROM questions ORDER BY RAND() LIMIT 5;")

for qid in $questions
do
  clear
  result=$(mysql -u $DB_USER -p$DB_PASS -D $DB_NAME -sN -e "SELECT question_text, option1, option2, option3, option4, correct_option FROM questions WHERE id=$qid;")

  if [[ -z "$result" ]]; then
    continue
  fi

  IFS=$'\t' read -r question_text opt1 opt2 opt3 opt4 correct <<< "$result"

  echo "=========================================="
  echo "         🧠 Quiz Management System         "
  echo "=========================================="
  echo
  echo "Q$((++total)). $question_text"
  echo
  echo "1) $opt1"
  echo "2) $opt2"
  echo "3) $opt3"
  echo "4) $opt4"
  echo
  echo "👉 Enter 0 to quit quiz anytime"
  echo

  read -p "Enter your answer [1-4 or 0]: " answer

  if [[ "$answer" == "0" ]]; then
    echo "👋 Exiting quiz early..."
    break
  elif [[ "$answer" == "$correct" ]]; then
    echo "✅ Correct!"
    ((score++))
  else
    echo "❌ Wrong! Correct answer was: $correct"
  fi

  sleep 2
done

clear
echo "=========================================="
echo "               🎉 Quiz Finished!           "
echo "=========================================="
echo "Total Questions Attempted: $total"
echo "Correct Answers: $score"
echo "Your Score: $((score * 100 / total))%"
echo "=========================================="


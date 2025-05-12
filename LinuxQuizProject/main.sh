#!/bin/bash

dialog --title "🌟 Welcome to the Quiz 🌟" --msgbox "\n\
──────────────────────────────────────────────────────────────────────────\n\
\n\
                       🧠  L I N U X   Q U I Z\n\
\n\
──────────────────────────────────────────────────────────────────────────\n\
\n\
                \"Challenge your brain. Test your skills.\"\n\
                 Let's see how well you really know Linux!\n\
\n\
──────────────────────────────────────────────────────────────────────────\n\
\n\
                     📌 Press OK to get started!\n" 20 78

CHOICE=$(dialog --title "👥 Select Role" --menu "Choose your role to continue:" 15 60 2 \
1 "🛠 Admin Panel – Add, View, Delete Questions" \
2 "🧪 User Panel – Attempt the Quiz" \
3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
    case $CHOICE in
        1)
            bash admin_panel.sh
            ;;
        2)
            bash user_panel.sh
            ;;
        *)
            dialog --title "⚠️ Invalid" --msgbox "Please select a valid option." 8 40
            ;;
    esac
else
    clear
    echo "Exited."
fi

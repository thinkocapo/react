# `react.sh` allows you to connect the React App to any back-end `/checkout` endpoint
#  Example usage:
# ./react.sh express
###############################

# DEV NOTES
# Assumes you already have a tmux session running

# QUESTION
# is there a way to 'check' what tmux sessions are open? because double-create the same session.

################################
ASPNET='$HOME/path/to/aspnet'
EXPRESS='$HOME/path/to/express'
FLASK='$HOME/path/to/flask'
LARAVEL='$HOME/path/to/laravel'
RAILS='$HOME/path/to/rails'
SPRING='$HOME/path/to/spring'

# 1 Initialize Tmux split window
# tmux new-session -s demos \; 
# tmux split-window -v\; 

echo 'echo in between Step 1 and Step 2'

# TODO - this needs to run AFTER*** the port gets set, swap with step3

# 2 Start React in one of the window panes
# tmux send-keys -t 0 'cd ~/thinkocapo/react' C-m \; tmux send-keys -t 0 'npm run deploy' C-m \;

echo 'echo in between Step 2 and Step 3'

# 3 Start The Server
# TODO - need right run command
if [[ $1 == 'aspnet' ]]
    then
        echo 'i do something'
        echo 'i do something too'
    # then REACT_APP_PORT=5001 tmux send-keys -t 1 'cd $FLASK' C-m \; tmux send-keys -t 1 'make deploy' C-m \;
fi

if [[ $1 == 'express' ]]
    then REACT_APP_PORT=3001 tmux send-keys -t 1 'cd ~/thinkocapo/express' C-m \; tmux send-keys -t 1 'make deploy' C-m \;
fi

if [[ $1 == 'flask' ]]
    then REACT_APP_PORT=5001 tmux send-keys -t 1 'cd ~/thinkocapo/flask' C-m \; tmux send-keys -t 1 'make deploy' C-m \;
fi

if [[ $1 == 'laravel' ]]
    then REACT_APP_PORT=8000 tmux send-keys -t 1 'cd ~/thinkocapo/laravel' C-m \; tmux send-keys -t 1 'make' C-m \;
fi

if [[ $1 == 'rails' ]]
    then REACT_APP_PORT=3001 tmux send-keys -t 1 'cd ~/thinkocapo/rails' C-m \; tmux send-keys -t 1 'make deploy' C-m \;
fi

if [[ $1 == 'spring' ]]
    then REACT_APP_PORT=8080 tmux send-keys -t 1 'cd ~/thinkocapo/spring?' C-m \; tmux send-keys -t 1 'make deploy' C-m \;
fi


echo 'DONE'




# OTHER
## make it so `react.sh react` only starts react app, no server side.
## make it so can only run server side, but that sounds like a separate script altogether. or could use an alias for that, easy.
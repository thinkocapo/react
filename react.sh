# `react.sh` allows you to connect the React App to any back-end `/checkout` endpoint
#  Example usage:
# ./react.sh express
###############################

# DEV QUESTIONS
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



# 3 Start The Server
# TODO - need right run command
if [[ $1 == 'aspnet' ]]
    # ORIGINAL....
    # REACT_APP_PORT=3001 npm run deploy;
    then 
        echo '11111'

        # 1 TODO need to run next line in background...make a separate script? hmmm would be nice to 'make a function run in background'
        REACT_APP_PORT=5001 tmux send-keys -t 0 'cd ~/thinkocapo/react' C-m \; tmux send-keys -t 0 'npm run deploy' C-m \;
        
        echo '22222'

        # 2
        tmux send-keys -t 1 'cd $FLASK' C-m \; tmux send-keys -t 1 'make deploy' C-m \;
        
        echo '33333'
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




# TODO - things stuck running in the background?
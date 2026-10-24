#! /bin/bash


### some of importent varibles need to learn


echo "all arguments passwd:$@"
echo "current directory: $pwd"
echo "current user: $USER"
echo "current home directory: $HOME"
echo "current process ID: $$"
sleep 2 &
echo "PID of the command running in background now: $!"
echo "current process ID: $!"
echo "seconds elapsed: $SECONDS"
echo "line number :$LINENO"
echo "number of arguments: $#"
echo "last command exit status: $?"
echo "script name: $0"

sleep 1 & 
echo "PID of the command running in background now: $!"
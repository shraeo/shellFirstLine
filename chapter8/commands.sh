#!/bin/bash

# 8.1

cd ~/Documents

cat << EOF > smalloger.sh
#!/bin/bash

for i in {1..500}; do
    uptime
    sleep 2
done
EOF

chmod u+x smalloger.sh

./smalloger.sh

fg

bg

cat smalloger.sh

./smalloger.sh &

jobs

fg %2

pkill smalloger.sh

killall smalloger.sh

cd Documents
./smalloger.sh &
exit
jobs

disown %1
jobs
exit

tail -f /tmp/sml.log

nohup ./smalloger.sh &
jobs
exit

cat << EOF > smalloger.service
[Unit]
Description=My Small Logger
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
ExecStart=/home/achao/Documents/smalloger.sh
WorkingDirectory=/home/achao/Documents

[Install]
WantedBy=multi-user.target
EOF

sudo cp smalloger.service /etc/systemd/system/

sudo systemctl enable smalloger.service
sudo systemctl start smalloger.service
sudo systemctl status smalloger.service

sudo systemctl stop smalloger.service
sudo systemctl disable smalloger.service

nproc

# 8.2

cd ~
tree Documents

sudo apt install tmux
wget https://gitee.com/charlize/tsg_source_code/raw/master/.tmux.conf -O ~/.tmux.conf

tmux new -s monitor

tmux list-sessions
tmux list-windows -a
tmux list-panes -a
tmux list-keys | less

alias tn='tmux new -A -s'
alias tl='tmux ls'
alias ta='tmux attach -t'

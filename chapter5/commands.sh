#!/bin/bash

# 5.3

tldr grep
grep java ~/.asdf/docs/*.md
grep -n java ~/.asdf/docs/*.md
grep -n python ~/.asdf/docs/*.md
grep -ni python ~/.asdf/docs/*.md
grep -wn format ~/.asdf/docs/*.md
grep -n 'ASDF.*FILE' ~/.asdf/docs/*.md
grep -ni python ~/.asdf/docs/*.md | grep -ni ruby
grep -n '^## ' ~/.asdf/docs/*.md
tldr ag
ag
sudo apt install silversearcher-ag
ag java ~/.asdf/docs
ag python ~/.asdf/docs
ag -w format ~/.asdf/docs
ag 'ASDF.*FILE' ~/.asdf/docs
ag python ~/.asdf/docs | ag ruby
ag '^## ' ~/.asdf/docs

# 5.4

cat ~/Documents/readme ~/.asdf/docs/README.md ~/.asdf/docs/thanks.md
cat ~/.asdf/docs/README.md
cp ~/.asdf/docs/README.md ~/Documents/readme
echo "\nAppend a new line here\nAppend the 2nd line" >> ~/Documents/readme
cat ~/Documents/readme

echo "This file contains 3 files:\n" > ~/Documents/threefiles
cat ~/Documents/readme ~/.asdf/docs/README.md ~/.asdf/docs/thanks.md >> \
  ~/Documents/threefiles

cat << EOF > ~/Documents/names.csv
202001,程新
202002,单乐原
202003,彭维珊
202004,刘子乔
202005,王立波
EOF

cat << EOF > ~/Documents/info.csv
男,12,5
男,11,4
女,13,6
女,10,3
男,11,4
EOF

cd ~/Documents
seq 5 > ids
cat ids
paste -d',' ids names.csv info.csv

# 5.5

cat ~/.asdf/docs/README.md
tr h S < ~/.asdf/docs/README.md
echo "print('Hello world')" | tr "aeiou" "12345"
echo "大小写转换" | tr "大小" "小大"
echo "tr, cut, sed & awk." | tr -d ',&.'
echo "tr,,,, cut, sed & awk." | tr -s ','          // <4>
echo "tr, cut, sed & awk." | tr '[:lower:]' '[:upper:]'  // <5>
echo "tR, cUt, sEd & aWk." | tr '[:upper:]' '[:lower:]'  // <6>
echo "tr, cut, sed & awk." | tr -cs '[a-z]' '-'          // <7>
echo "tr, cut, sed & awk." | tr -cd '[a-z]'              // <8>

cd ~/Documents
ed ~/.asdf/docs/README.md    // <1>
cat readme                   // <11>
sed '1s/asdf/xyz/g' ~/.asdf/docs/README.md > readme
cat ~/.asdf/docs/README.md
sed '$s/asdf/xyz/g' ~/.asdf/docs/README.md            // <2>
sed -n '$s/asdf/xyz/gp' ~/.asdf/docs/README.md        // <4>
cat -n ~/.asdf/docs/README.md
sed '3,5s!readme!read/me!i' ~/.asdf/docs/README.md
sed '/^<!-- include/s/-->/=>/g' ~/.asdf/docs/README.md
sed -e '/^<!-- include/s/-->/=>/g' -e '1s/asdf/ASDF/g' ~/.asdf/docs/README.md
sed 's/readme/<&>/ig' ~/.asdf/docs/README.md
sed '1s/asdf/ASDF/g' ~/.asdf/docs/README.md | sed 's/\(asdf\)-\(vm\)/\1 - \2/ig'
sed '/^<!-- include/!s/asdf/ASDF/g' ~/.asdf/docs/README.md
sed '/^$/d' ~/.asdf/docs/README.md
cat -n ~/.asdf/docs/README.md      // <1>
sed '/http/i http line' ~/.asdf/docs/README.md    // <2>
sed '/http/c http line' ~/.asdf/docs/README.md    // <3>
sed '/http/a http line' ~/.asdf/docs/README.md    // <4>
sed '/http/i HTTP header\naddress details:' ~/.asdf/docs/README.md    // <1>
sed '/http/c HTTP header\nHTTP address\nAddress over' ~/.asdf/docs/README.md    // <2>
sed -e '/http/i HTTP header:' -e '/http/a More details...'  ~/.asdf/docs/README.md    // <3>
sed -n '3,5!p' ~/.asdf/docs/README.md    // <1>
sed -n '/http/p' ~/.asdf/docs/README.md    // <2>

cat ~/Documents/scores.csv
cat ~/.asdf/docs/thanks.md
cut -d',' -f2,7-9 ~/Documents/scores.csv
cut -c1-60 ~/.asdf/docs/thanks.md
cut -d',' -f1 --complement ~/Documents/scores.csv


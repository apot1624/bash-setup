# bash-setup
bash configuration setup

## Add .bash_fzf in .bashrc
```bash
git clone https://github.com/apot1624/bash-setup.git /tmp/bash-setup

cp /tmp/bash-setup/.bash* ~
cp /tmp/bash-setup/.cdup.sh ~
chmod +x ~/.cdup.sh

echo 'if [ -f ~/.bash_fzf ]; then
    . ~/.bash_fzf
fi' >> ~/.bashrc

rm -rf /tmp/bash-setup

```

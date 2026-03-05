# bash-setup
bash configuration setup

## Add .bash_fzf in .bashrc
```bash
git clone https://github.com/apot1624/bash-setup.git /tmp/bash-setup

cp /tmp/bash-setup/.bash* ~
cp /tmp/bash-setup/.cdup.sh ~
chmod +x ~/.cdup.sh

echo 'if [ -f ~/.bash_fzf ]; then . ~/.bash_fzf; fi' >> ~/.bashrc
echo 'if [ -f ~/.bash_vscode ]; then . ~/.bash_vscode; fi' >> ~/.bashrc

rm -rf /tmp/bash-setup

```
## Config lingma in ranger
```bash
ranger --copy-config=rifle
ranger --copy-config=rc

cat >> ~/.config/ranger/rifle.conf << 'EOF'

# 用 lingma 打开文本文件（先加载环境变量）
mime ^text,  label lingma = bash -c "source ~/.bash_vscode && lingma -- \"$@\"" -- "$@" f

# 用 lingma 打开非文本但扩展名匹配的常见代码文件
!mime ^text, label lingma, ext xml|json|csv|tex|py|pl|rb|js|sh|php = bash -c "source ~/.bash_vscode && lingma -- \"$@\"" -- "$@" f

# 为所有其他文件提供 lingma 选项（作为兜底）
label lingma, !mime ^text, !ext xml|json|csv|tex|py|pl|rb|js|sh|php = bash -c "source ~/.bash_vscode && lingma -- \"$@\"" -- "$@" f
EOF

```

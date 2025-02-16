autoload -Uz compinit && compinit

# エイリアスの設定
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias ..='cd ../'
alias ...='cd ../../'

# プロンプトの設定
export PS1="%n@%{%F{red}%}%m%{%f%}:%~ "$'\n'"$ "

# macOS専用設定
if [[ "$(uname)" == "Darwin" ]]; then
  # クリップボード関連
  alias CP='pbcopy'
  alias V='pbpaste'

  # macOS専用の環境変数
  export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
fi
# Переменные окружения
# ____________________
# Рабочая дериктория 
export WORKSPACE_DIR="$HOME/ws"
#Программы
#___________________________
# Путь к установке Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Тема для Zsh
ZSH_THEME="robbyrussell"
# Включить плагины
plugins=(vi-mode)

# Загрузить Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Наведение красоты
alias ls='eza --icons'

# Алиасы скоротки
alias ll="ls -la"
alias lt="ls -T"

# Путь к конфигам
alias zshrc="vim $HOME/.zshrc"
alias vimrc="vim $HOME/.vimrc"

# Работа с git
alias lg='git lg'
alias gam='git commit -am'
alias gch='git checkout'

# Переход в рабочую папку
ws() {
    if [[ -z $WORKSPACE_DIR ]]; then
        echo "Ошибка: WORKSPACE_DIR не задана."
        return 1
    fi

    if [[ -z $1 ]]; then
        # Если аргумент не передан, перейти в базовую директорию
        cd "$WORKSPACE_DIR" || return
    else
        # Определение папки по флагу
        case $1 in
            1) target_dir="$WORKSPACE_DIR/1.sh" ;;
            2) target_dir="$WORKSPACE_DIR/2.js" ;;
            3) target_dir="$WORKSPACE_DIR/3.python" ;;
            4) target_dir="$WORKSPACE_DIR/4.test" ;;
            5) target_dir="$WORKSPACE_DIR/5.link" ;;
            6) target_dir="$WORKSPACE_DIR/6.md" ;;
            7) target_dir="$WORKSPACE_DIR/7.xlsx" ;;
            *)
                echo "Неизвестный флаг: $1"
                return 1
                ;;
        esac
        cd "$target_dir" || return
    fi
    pwd
    ls
}

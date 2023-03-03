#配置起terminal起始路径
#cd ~/Desktop/work/
#java
JAVA19_HOME="/Library/Java/JavaVirtualMachines/jdk-19.jdk/Contents/Home" 
JAVA8_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home" 
JAVA7_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home" 
JAVA15_HOME="/Library/Java/JavaVirtualMachines/jdk-15.0.1.jdk/Contents/Home"  
#geeknote_home
#GEEKNOTEHOME="python2 /Users/lijie/Desktop/soft/geeknote/geeknote/geeknote.py"  
#默认jdk
JAVA_HOME=$JAVA8_HOME 
alias jdk8='export JAVA_HOME=$JAVA8_HOME' 
alias jdk7='export JAVA_HOME=$JAVA7_HOME' 
alias jdk15='export JAVA_HOME=$JAVA15_HOME' 
alias jdk19='export JAVA_HOME=$JAVA19_HOME' 
export JAVA_HOME 
CLASSPATH="$JAVA_HOME/lib" 
PATH=".$PATH:$JAVA_HOME/bin"  
#python2
PYTHON2_PATH="/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7"
#python3
PYTHON3_PATH="/usr/local/Cellar/python@3.8/3.8.6/Frameworks/Python.framework/Versions/3.8/bin/python3.8"



#blink
source /etc/profile  
export CFLAGS='-std=c99'

export M2HOME=~/Desktop/soft/mvn3.6 
export GOROOT=/usr/local/go 
export GOPATH=/usr/local/go/bin 
export GOBIN=$GOPATH 
export PATH=$PATH:$GOPATH$GOROOT/:$GOBIN:$M2HOME/bin:/usr/local/mysql/bin:$PYTHON2_PATH
export PATH
export EDITOR=vim

alias vs="open -a /Applications/vscode.app" 
alias idea="open -a /Applications/idea.app" 
alias golang="open -a /Applications/GoLand.app" 
alias ideace="open -a /Applications/ideace.app" 
alias pycharm="open -a /Applications/pycharm.app" 
alias txt="cd /Users/lijie/Desktop/txt" 
alias soft="cd /Users/lijie/Desktop/soft" 
alias work="cd /Users/lijie/Desktop/work" 
alias work_go="cd /Users/lijie/Desktop/work/go" 
alias vimrc="vim ~/.vimrc" 
alias ninit="vim ~/.config/nvim/init.vim"  
#tmux
alias tn="tmux new -s" 
alias tk="tmux kill-server" 
alias td="tmux detach" 
alias ta="tmux attach -t" 
alias tl="tmux ls" 
alias ts="tmux switch -t"  
#delivery db
alias db_local="mycli -uroot -proot -h 127.0.0.1 -P 3306 mysql"  

alias db_pms_test="mycli -usz_sc_test2 -p6vJaoy5HHiPP0ms_sUnO -h master.shopee_pms.mysql.cloud.test.shopee.io -P 6606 shopee_pms_db"  
alias db_pms_uat="mycli -usupply_chain_uat -pCaXo8Ecv3_wdBlwGEsF4 -h master.shopee_pms.mysql.cloud.uat.shopee.io -P 6606 shopee_pms_db"  
alias db_pms_stag="mycli -ushopee_stag_all3 -pCZhBIu_2XAUALOGzsH2o -h master.shopee_pms.mysql.cloud.staging.shopee.io -P 6606 shopee_pms_db"
alias db_scbs_uat="mycli -usz_sc_test2 -p6vJaoy5HHiPP0ms_sUnO -h master.shopee_scbs.mysql.cloud.uat.shopee.io -P 6606 shopee_scbs_db"

alias db_action_test="mycli -usz_sc_test2 -p6vJaoy5HHiPP0ms_sUnO -h master.shopee_pms.mysql.cloud.test.shopee.io -P  6606 shopee_scm_action_db"

alias db_purchase_test="mycli -usz_sc_test2 -p6vJaoy5HHiPP0ms_sUnO -h master.shopee_pms.mysql.cloud.test.shopee.io -P     6606 shopee_scm_purchase_db"
alias db_purchase_uat="mycli -ushopee_uat_all3 -pzWUR8oTuEZEYxqe_fkIJ -h master.shopee_pms.mysql.cloud.uat.shopee.io -P     6606 shopee_scm_purchase_db"
alias db_forecast_uat="mycli -usupply_chain_uat -pCaXo8Ecv3_wdBlwGEsF4 -h master.shopee_pms.mysql.cloud.uat.shopee.io -P     6606 shopee_scm_sales_forecast_db"
alias db_forecast_test="mycli -usz_sc_test2 -p6vJaoy5HHiPP0ms_sUnO -h master.shopee_pms.mysql.cloud.test.shopee.io -P     6606 shopee_scm_sales_forecast_db"

#ranger
alias rg="ranger"  
#chrome
alias chrome="open -a /Applications/Google Chrome.app"  
#plantuml
#alias plant="java -jar ~/Desktop/soft/plantuml.jar -tsvg "  
#geeknote
alias nbList="$GEEKNOTEHOME notebook-list" 
alias nbEdit="$GEEKNOTEHOME notebook-edit" 
alias nbCreate="$GEEKNOTEHOME notebook-create" 
alias nbRemove="$GEEKNOTEHOME notebook-remove"
alias nFind="$GEEKNOTEHOME find" 
alias nEdit="$GEEKNOTEHOME edit" 
alias nCreate="$GEEKNOTEHOME create" 
alias nRemove="$GEEKNOTEHOME remove" 
alias nShow="$GEEKNOTEHOME show" 
alias nSet="$GEEKNOTEHOME settings"  
#host切换
alias hTest="sudo mv /etc/hosts.test /etc/hosts"
alias hosts="sudo mv /etc/hosts /etc/hosts.test"
#maven命令
alias mcc="mvn clean compile"  
alias mds="mvn deploy -DskipTests"  
alias mdt="mvn dependency:tree>tree.txt"  
alias mci="mvn clean install"  
# arthas
alias arthas="java -jar /Users/lijie/Desktop/soft/arthas-boot.jar"
# lazygit
alias lg="lazygit"
#fzf
export FZF_DEFAULT_OPTS='--height 90% --layout=reverse  --bind ctrl-j:down,ctrl-k:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"' 
# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules}/*" 2&gt; /dev/null' 
export FZF_COMPLETION_TRIGGER='\'
export FZFTMUXHEIGHT='80%' 
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
# 启用显示颜色
export CLICOLOR=1
 #两两字母为一组，便是不同的文件，文件夹的颜色设置以及背景，加粗等
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
GNUBIN="/usr/local/Cellar/coreutils/8.32/libexec/gnubin"
PATH=$GNUBIN:$PATH
#if brew list | grep coreutils > /dev/null ; then
  #alias ls='ls --show-control-chars --color=auto'
  #eval `gdircolors -b $HOME/.dir_colors`
#fi
if [ "$TERM" != "dumb" ]; then

export LS_OPTIONS='--color=auto'

test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"

eval `dircolors ~/.dir_colors`

fi


alias ls='ls $LS_OPTIONS'

alias ll='ls -al'

alias grep='grep $LS_OPTIONS'

alias fgrep='fgrep $LS_OPTIONS'

alias egrep='egrep $LS_OPTIONS'
# git
alias gcam='git commit -am'
alias gp='git push'
alias gpl='git pull'
alias gc='git checkout -'
alias lijie='cd ~/'

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


# shopee-go config
## 配合上面的 socat 的 UNIX-LISTEN 参数 ，指定转发的 socket
export SP_UNIX_SOCKET=/tmp/spex.sock    
 
## CAT 配置
#export CAT_MODE="TEST"
#export CAT_MODE=TEST
 
## 读取本地配置的位置，实际读取的文件就是CHASSIS_CONF_DIR/chassis.yaml
#export CHASSIS_CONF_DIR=/Users/lijie/Desktop/work/shopee/retail/

 
## protobuf冲突时转为warn而不是panic
export GOLANG_PROTOBUF_REGISTRATION_CONFLICT=warn
 
## 如果是老目录，使用这个环境变量来告知去读取retail的apollo
export RETAIL=1
 
## 开发环境，一般就是test,uat,local; local模式跟test一样，只不过会顺便关闭CAT以更快地启动
export ENV="local"
 
## 最好只在 IDE 中配置项目级别的 environment 就行（以下可直接复制到 golang）
SP_UNIX_SOCKET=/tmp/spex.sock;CAT_MODE=TEST;CHASSIS_CONF_DIR=./conf;GOLANG_PROTOBUF_REGISTRATION_CONFLICT=warn;RETAIL=1;ENV=local
# spex
alias spex="socat -d -d -d UNIX-LISTEN:/tmp/spex.sock,reuseaddr,fork TCP:agent-tcp.spex.test.shopee.io:9299 &"
# retail-go-lint
alias maslint="golangci-lint run ./retail/apps/mas/... ./retail/biz/mas/..."

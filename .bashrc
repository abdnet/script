
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_72
export PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c=clear
alias intl='sudo apt install'
alias update='sudo apt update'
alias add='git add'
alias cmt='git commit -m'
alias push='git push origin'
alias pull='git pull'
alias eclp='/media/azayko/data/M2/PROJETS/ServerIDE/IDE/eclipse/eclipse'
alias data='cd /media/azayko/data/M2/PROJETS/'
alias talend='/media/azayko/data/M2/PROJETS/PROJET_QD/TOS_DI-20170623_1246-V6.4.1/TOS_DI-linux-gtk-x86_64'
alias projet='cd /media/azayko/data/M2/PROJETS/PROJET_JEE/servers_git/projetM2/ ;./deploy.sh;cd '
alias server_git='cd /media/azayko/data/M2/PROJETS/PROJET_JEE/servers_git/projetM2/'
alias spark='cd /media/azayko/data/M2/COURS/S1/POST-RELATIONNELLE/TP/spark-intro'
export PS1="\[\e[31;40m\]\u\[\e[m\][\[\e[35m\]\W\[\e[m\]]# "



	# GLASSFISH
	GLASSFISH_HOME=/media/azayko/data/M2/PROJETS/ServerIDE/server/glassfish4
	PATH=$GLASSFISH_HOME/glassfish/bin:$PATH

	CLASSPATH=$CLASSPATH:$GLASSFISH_HOME/glassfish/lib/*
	CLASSPATH=$CLASSPATH:$GLASSFISH_HOME/glassfish/lib/appserv-rt.jar
	CLASSPATH=$CLASSPATH:$GLASSFISH_HOME/glassfish/lib/javaee.jar

	#DERBY
	DERBY_HOME=$GLASSFISH_HOME/javadb
	PATH=$PATH:$DERBY_HOME/bin

	export PATH CLASSPATH GLASSFISH_HOME DERBY_HOME 

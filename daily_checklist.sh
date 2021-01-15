# ---------------------------------------------------------------- #
# Script:        limpar_estatisticas.sh
# Description:   LIMPAR ESTATISTICAS DA KHOMP AUTOMATICAMENTE 
# Written by	 EQUIPE DE T.I. (VANDERSON)
# Date:			 22.01.2020
#            	 Grupo Vicoa Brasil
# ---------------------------------------------------------------- #

#!/bin/bash

#CRIANDO ARQUIVO DE LOG NO FORMATO DE TIMESTAMP 
#SERVE COMO PROVA DE QUE O CHECKLIST ESTA SENDO REALIZADO 
#touch file_$(date "+%Y-%m-%d"_"%H:%M:%S")_checklist.log

#CRIA O ARQUIVO COM FORMATO file_20201929_checklist.log
touch file_$(date "+%Y-%m-%d")_checklist.log

#IMPRIMINDO A HORA NO INICIO DO ARQUIVO
date >> file_$(date "+%Y-%m-%d")_checklist.log

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO LINK DE INTERNET:::::::::::::::::::::::::\033[0m" 
echo -e "LINK DE INTERNET\n" >> file_$(date "+%Y-%m-%d")_checklist.log
python /usr/local/bin/speedtest.py | grep Download  >> file_$(date "+%Y-%m-%d")_checklist.log
echo " "
echo " "
python /usr/local/bin/speedtest.py | grep Upload  >> file_$(date "+%Y-%m-%d")_checklist.log

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SWITCHES:::::::::::::::::::::::::\033[0m"
ping -c1 192.168.25.6 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m SWITCH  192.168.25.6 - UP\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m SWITCH FINAL 192.168.25.6 - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

ping -c1 192.168.25.4 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m SWITCH FINAL 192.168.25.4 - UP\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m SWITCH FINAL 192.168.25.4 - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1 192.168.25.24 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m SERVIDOR BANCO LOCAL - UP\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m SERVIDOR BANCO LOCAL - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1 192.168.25.23 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m INTRANET - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m INTRANET - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "
echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"

ping -c1 192.168.25.13 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m ACTIVE DIRECTORY - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m ACTIVE DIRECTORY - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1 192.168.25.28 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m CENTRAL TELEFONICA - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m CENTRAL TELEFONICA - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1 192.168.25.23 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m ZABBIX - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m ZABBIX - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1  site.com.br > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m SITE site.com.br - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m SITE site.com.br - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1  xx.xxx.xxx.xx > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m OSTICKET - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m OSTICKET - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1  192.168.25.22 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m SERVIDOR DE ARMAZENAMENTO NETUNO - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m SERVIDOR DE ARMAZENAMENTO NETUNO - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
echo " "
echo " "

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO SERVIDORES:::::::::::::::::::::::::\033[0m"
ping -c1  192.168.25.22 > /dev/null
if [ $? -eq 0 ]; then 
    echo -e "\033[0;32m CAPITAL MIDIA  - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m CAPITAL MIDIA - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi

echo -e " \033[0;34m:::::::::::::::::::::::::::FAZENDO LOGIN EM 192.168.25.23:::::::::::::::::::::::::\033[0m"
echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO MARIADB:::::::::::::::::::::::::\033[0m"
sshpass -p pass ssh user@192.168.25.23 systemctl status mariadb > /dev/null;
if [ $? -eq 0 ]; then
    echo -e "\033[0;32m MARIADB - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m MARIADB - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi

echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO APACHESERVER:::::::::::::::::::::::::\033[0m"
sshpass -p pass ssh user@192.168.25.23 systemctl status httpd > /dev/null
if [ $? -eq 0 ]; then
    echo -e "\033[0;32m SERVIDOR BANCO LOCAL - OK\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m SERVIDOR BANCO LOCAL - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi

echo -e " \033[0;34m:::::::::::::::::::::::::::FAZENDO LOGIN EM 192.168.25.24:::::::::::::::::::::::::\033[0m"
echo -e " \033[0;34m:::::::::::::::::::::::::::TESTANDO OPENFIRE:::::::::::::::::::::::::\033[0m"
sshpass -p pass ssh user@192.168.25.24 /etc/init.d/openfire status > /dev/null;
if [ $? -eq 0 ]; then
    echo -e "\033[0;32m OPENFIRE - UP\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m OPENFIRE - DOWN  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi

echo -e " \033[0;34m:::::::::::::::::::::::::::LIMPANDO ESTATISTICAS DA KHOMP:::::::::::::::::::::::::\033[0m"
sshpass -p pass ssh user@192.168.25.28 'echo -e "fastway\n" | sudo -S /bin/sh /home/fastway/limpa_estatisticas.sh' > /dev/null;
if [ $? -eq 0 ]; then
    echo -e "\033[0;32m ESTATISTICAS DA KHOMP  - CLEAR\033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
  else
  echo -e " \033[0;31m ESTATISTICAS DA KHOMP - ERROR  \033[0m" >> file_$(date "+%Y-%m-%d")_checklist.log
fi
exit

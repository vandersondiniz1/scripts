#CRIAR SCRIPT SH PARA SER EXECUTADO NO CRON [...]
#RUBENS W. (WORKANA)
#28062019
#VERSAO 1.0.0
#COPYRIGHT VANDERSON DINIZ

#!/bin/bash

#DECLARACAO DE VARIAVEIS
var_true=$true
var_false=$false
DIRETORIO_IMEI="/home/USER/Documentos/Workana/MUDAR_PERMISSOES_ARQUIVO_SHELL_SCRIPT/imei.xml"
DIRETORIO_PACKAGES_XML="/home/USER/Documentos/Workana/MUDAR_PERMISSOES_ARQUIVO_SHELL_SCRIPT/packages.xml"

#LOCALIZANDO O VALOR DO IMEI NO ARQUIVO IMEI.XML
echo "======================================================================"
imei=$(grep deviceid $DIRETORIO_IMEI | awk -F ">" '{print substr($2,1,14)}')
echo "VALOR DO IMEI DO ARQUIVO <IMEI.XML> $imei"
echo "======================================================================"

echo "======================================================================"
#LOCALIZANDO O VALOR DO IMEI EM OUTRO ARQUIVO PARA FAZER A COMPARACAO
packages_imei=$(grep deviceid $DIRETORIO_PACKAGES_XML | awk -F ">" '{print substr($2,1,14)}')
echo "VALOR DO IMEI DO ARQUIVO <PACKAGES.XML> $packages_imei"
echo "======================================================================"

#USANDO A CHAMADA DE IMEI E COMPARANDO O NUMERO DETERMINADO NESTE SCRIPT
#SE IGUAIS, CONTINUA A EXECUCAO, SE NAO, SAI. 
if [ $imei -ne $packages_imei ]
then
    echo "OS VALORES DE IMEI SAO DIFERENTES - ABORTANDO..."
	exit
else
    echo "OS VALORES SAO IGUAIS - CONTINUANDO..."
	

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O READ_CALL_LOG
READ_CALL_LOG_GRANTED=$(awk -F "granted" '/READ_CALL_LOG/ {print substr($2,3,4)}' packages.xml)
READ_CALL_LOG_FLAGS=$(awk -F "flags" '/READ_CALL_LOG/ {print substr($2,3,2)}' packages.xml)

if [ $READ_CALL_LOG_GRANTED == "true" ] && [ $READ_CALL_LOG_FLAGS == "30" ]
then
    echo "READ_CALL_LOG - PERMISSAO OK"
else	
    $(sed -i '/READ_CALL_LOG/ s/false/true/g' packages.xml)
    $(sed -i '/READ_CALL_LOG/ s/0/30/g' packages.xml)	
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O READ_SMS
READ_SMS_GRANTED=$(awk -F "granted" '/READ_SMS/ {print substr($2,3,4)}' packages.xml)
READ_SMS_FLAGS=$(awk -F "flags" '/READ_SMS/ {print substr($2,3,2)}' packages.xml)
 
if [ $READ_SMS_GRANTED == "true" ] && [ $READ_SMS_FLAGS == "30" ]
then
    echo "READ_SMS - PERMISSAO OK"
else	
    $(sed -i '/READ_SMS/ s/false/true/g' packages.xml)
    $(sed -i '/READ_SMS/ s/0/30/g' packages.xml)
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O ACCESS_FINE_LOCATION
ACCESS_FINE_LOCATION_GRANTED=$(awk -F "granted" '/ACCESS_FINE_LOCATION/ {print substr($2,3,4)}' packages.xml)
ACCESS_FINE_LOCATION_FLAGS=$(awk -F "flags" '/ACCESS_FINE_LOCATION/ {print substr($2,3,2)}' packages.xml)

if [ $ACCESS_FINE_LOCATION_GRANTED == "true" ] && [ $ACCESS_FINE_LOCATION_FLAGS == "30" ]
then
    echo "ACCESS_FINE_LOCATION - PERMISSAO OK"
else	
    $(sed -i '/ACCESS_FINE_LOCATION/ s/false/true/g' packages.xml)
    $(sed -i '/ACCESS_FINE_LOCATION/ s/0/30/g' packages.xml)
fi


#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O RECEIVE_SMS
RECEIVE_SMS_GRANTED=$(awk -F "granted" '/RECEIVE_SMS/ {print substr($2,3,4)}' packages.xml)
RECEIVE_SMS_FLAGS=$(awk -F "flags" '/RECEIVE_SMS/ {print substr($2,3,2)}' packages.xml)

if [ $RECEIVE_SMS_GRANTED == "true" ] && [ $RECEIVE_SMS_FLAGS == "30" ]
then
    echo "RECEIVE_SMS - PERMISSAO OK"
else	
    $(sed -i '/RECEIVE_SMS/ s/false/true/g' packages.xml)
    $(sed -i '/RECEIVE_SMS/ s/0/30/g' packages.xml)
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O ACCESS_COARSE_LOCATION
ACCESS_COARSE_LOCATION_GRANTED=$(awk -F "granted" '/ACCESS_COARSE_LOCATION/ {print substr($2,3,4)}' packages.xml)
ACCESS_COARSE_LOCATION_FLAGS=$(awk -F "flags" '/ACCESS_COARSE_LOCATION/ {print substr($2,3,2)}' packages.xml)

if [ $ACCESS_COARSE_LOCATION_GRANTED == "true" ] && [ $ACCESS_COARSE_LOCATION_FLAGS == "30" ]
then
    echo "ACCESS_COARSE_LOCATION - PERMISSAO OK"
else	
    $(sed -i '/ACCESS_COARSE_LOCATION/ s/false/true/g' packages.xml)
    $(sed -i '/ACCESS_COARSE_LOCATION/ s/0/30/g' packages.xml)
fi


#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O READ_PHONE_STATE
READ_PHONE_STATE_GRANTED=$(awk -F "granted" '/READ_PHONE_STATE/ {print substr($2,3,4)}' packages.xml)
READ_PHONE_STATE_FLAGS=$(awk -F "flags" '/READ_PHONE_STATE/ {print substr($2,3,2)}' packages.xml)

if [ $READ_PHONE_STATE_GRANTED == "true" ] && [ $READ_PHONE_STATE_FLAGS == "30" ]
then
    echo "READ_PHONE_STATE - PERMISSAO OK"
else	
    $(sed -i '/READ_PHONE_STATE/ s/false/true/g' packages.xml)
    $(sed -i '/READ_PHONE_STATE/ s/0/30/g' packages.xml)
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O CAMERA
CAMERA_GRANTED=$(awk -F "granted" '/CAMERA/ {print substr($2,3,4)}' packages.xml)
CAMERA_FLAGS=$(awk -F "flags" '/CAMERA/ {print substr($2,3,2)}' packages.xml)

if [ $CAMERA_GRANTED == "true" ] && [ $CAMERA_FLAGS == "30" ]
then
    echo "CAMERA - PERMISSAO OK"
else	
    $(sed -i '/CAMERA/ s/false/true/g' packages.xml)
    $(sed -i '/CAMERA/ s/0/30/g' packages.xml)
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O PROCESS_OUTGOING_CALLS
PROCESS_OUTGOING_CALLS_GRANTED=$(awk -F "granted" '/PROCESS_OUTGOING_CALLS/ {print substr($2,3,4)}' packages.xml)
PROCESS_OUTGOING_CALLS_FLAGS=$(awk -F "flags" '/PROCESS_OUTGOING_CALLS/ {print substr($2,3,2)}' packages.xml)

if [ $PROCESS_OUTGOING_CALLS_GRANTED == "true" ] && [ $PROCESS_OUTGOING_CALLS_FLAGS == "30" ]
then
    echo "PROCESS_OUTGOING_CALLS - PERMISSAO OK"
else	
    $(sed -i '/PROCESS_OUTGOING_CALLS/ s/false/true/g' packages.xml)
    $(sed -i '/PROCESS_OUTGOING_CALLS/ s/0/30/g' packages.xml)
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O WRITE_EXTERNAL_STORAGE
WRITE_EXTERNAL_STORAGE_GRANTED=$(awk -F "granted" '/WRITE_EXTERNAL_STORAGE/ {print substr($2,3,4)}' packages.xml)
WRITE_EXTERNAL_STORAGE_FLAGS=$(awk -F "flags" '/WRITE_EXTERNAL_STORAGE/ {print substr($2,3,2)}' packages.xml)

if [ $WRITE_EXTERNAL_STORAGE_GRANTED == "true" ] && [ $WRITE_EXTERNAL_STORAGE_FLAGS == "30" ]
then
    echo "WRITE_EXTERNAL_STORAGE - PERMISSAO OK"
else	
    $(sed -i '/WRITE_EXTERNAL_STORAGE/ s/false/true/g' packages.xml)
    $(sed -i '/WRITE_EXTERNAL_STORAGE/ s/0/30/g' packages.xml)
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O RECORD_AUDIO
RECORD_AUDIO_GRANTED=$(awk -F "granted" '/RECORD_AUDIO/ {print substr($2,3,4)}' packages.xml)
RECORD_AUDIO_FLAGS=$(awk -F "flags" '/RECORD_AUDIO/ {print substr($2,3,2)}' packages.xml)

if [ $RECORD_AUDIO_GRANTED == "true" ] && [ $RECORD_AUDIO_FLAGS == "30" ]
then
    echo "RECORD_AUDIO - PERMISSAO OK"
else	
    $(sed -i '/RECORD_AUDIO/ s/false/true/g' packages.xml)
    $(sed -i '/RECORD_AUDIO/ s/0/30/g' packages.xml)
fi

#PEGANDO O VALOR DOS CAMPOS GRANTED (TRUE) E FLAGS (30) PARA O READ_CONTACTS
READ_CONTACTS_GRANTED=$(awk -F "granted" '/READ_CONTACTS/ {print substr($2,3,4)}' packages.xml)
READ_CONTACTS_FLAGS=$(awk -F "flags" '/READ_CONTACTS/ {print substr($2,3,2)}' packages.xml)

if [ $READ_CONTACTS_GRANTED == "true" ] && [ $READ_CONTACTS_FLAGS == "30" ]
then
    echo "READ_CONTACTS - PERMISSAO OK"
else	
    $(sed -i '/READ_CONTACTS/ s/false/true/g' packages.xml)
    $(sed -i '/READ_CONTACTS/ s/0/30/g' packages.xml)
fi

fi

echo "==========================="
echo " FINALIZANDO CONFIGURACOES"
echo "==========================="
echo "        REINICIANDO"
echo "==========================="

#sudo shutdown -r 1 "O SISTEMA SERA REINICIADO" 


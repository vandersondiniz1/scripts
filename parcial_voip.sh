# ---------------------------------------------------------------- #
# Script:        parcial_voip.sh
# Description:   GERAR CUSTO DO VOIP FSMXFAST
# Written by	 vanderson.r.diniz
# Date:			 23.05.2020
#                Grupo Vicoa Brasil
# ---------------------------------------------------------------- #
#!/bin/bash

#NUMERO DE LINHAS DO ARQUIVO DA FSM
echo "GERANDO PARCIAL DO VOIP"

#ELIMINA O ARQUIVO ANTERIOR
#rm parcialvoip.csv

#CONTA O NUMERO DE LINHAS E ARMAZENA NUMA VARIAVEL
num_linhas=$(wc -l *?-8048.csv | awk -F " " '{print $1}')

#FOR DA PRIMEIRA LINHA ATE A ULTIMA DO ARQUIVO FSM
for ((i=1; i<=$num_linhas; i++))
do
	#QUANTIDADE DE OCORRENCIAS DE UM DETERMINADO NUMERO NO ARQUIVO
	cont=$(grep -c $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_*)
	
	#SE A QUANTIDADE DE OCORRENCIAS FOR 1, JOGA NO ARQUIVO
	if [ $cont -eq 1 ]; 
		then
			#PEGA O NOME DA OPERACO E O CUSTO E JA COLOCA NO ARQUIVO PARCIAL_VOIP.CSV
			grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
	fi	
	if [ $cont -eq 2 ]
		then 
				
				 #for ((a=1; a<=2; a++));
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done

	fi	
	if [ $cont -eq 3 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	if [ $cont -eq 4 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	if [ $cont -eq 5 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	if [ $cont -eq 6 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	if [ $cont -eq 7 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	if [ $cont -eq 8 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	if [ $cont -eq 9 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	if [ $cont -eq 10 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
		if [ $cont -eq 11 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
		if [ $cont -eq 12 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
		if [ $cont -eq 13 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
		if [ $cont -eq 14 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
		if [ $cont -eq 15 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 16 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 17 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 18 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 19 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 20 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 21 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 22 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 23 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 24 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
			if [ $cont -eq 25 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
				if [ $cont -eq 26 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
				if [ $cont -eq 27 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
				if [ $cont -eq 28 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
				if [ $cont -eq 29 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
				if [ $cont -eq 30 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 31 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 32 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 33 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 34 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 35 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 36 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 37 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 38 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 39 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
					if [ $cont -eq 40 ];
		then 
				#for ((a=1; a<=$cont; a++))
					#do
						grep $(cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $2;}' | cut -c3-13) relatorio_chamadas_* > file.tmp
						sed -n '1p' file.tmp | awk -F ";" '{print $15;}' >> PARCIAL_VOIP.csv && cat *?8048.csv | head -$i | tail -1 | awk -F ";" '{print $6;}' >> PARCIAL_VOIP.csv
					#done
	fi	
	
done	

#REMOVE ESPACOS E COLOCA OS NUMEROS AO LADOS DOS NOMES	
cat PARCIAL_VOIP.csv | sed '$!N;s/\n/ /' > parcial_voip.csv	&& rm PARCIAL_VOIP.csv	

#ORDENA O ARQUIVO EM ORDEM CRESCENTE
sort -b -n parcial_voip.csv > PARCIAL_VOIP_"$(date +%H:%M)".csv && rm parcial_voip.csv && rm file.tmp

#CRIA UM ARQUIVO QUE SERA COLOCADO NO SITE
touch parcial_voip.txt

#COLOCA INFORMACOES DE DATA E HORA NO ARQUIVO QUE SERA GERADO
data_atual=$(date | cut -c1-3)
hora_atual=$(date +%H)

data=$(date +%d.%m.%y)
hora=$(date +%H:%M:%S)
ultima_ligacao=$(tail -1 *-8048.csv | awk -F ";" '{print $3;}' | cut -c12-19)

#SE O DIA FOR SABADO, AS 18 HORAS, O ROTULO SERA: RESULTADO VOIP EM...
if [ $data_atual == "sun" ];then
		if [ $hora_atual -ge "18" ]; then
			echo "===================================" >> parcial_voip.txt
			echo "Resultado VOIP em: $data - $hora"    >> parcial_voip.txt
			echo "Hora Última Ligação $ultima_ligacao" >> parcial_voip.txt
			echo "===================================" >> parcial_voip.txt
		fi
fi		
#SE O DIA NAO FOR SABADO, MAS QUE SEJA 20 HORAS, O ROTULO SERA: RESULTADO VOIP EM...
if [ $data_atual != "sun" ];then
	if [ $hora_atual -ge "20" ]; then
			echo "===================================" >> parcial_voip.txt
			echo "Resultado VOIP em: $data - $hora"    >> parcial_voip.txt  	
			echo "Hora Última Ligação $ultima_ligacao" >> parcial_voip.txt
			echo "===================================" >> parcial_voip.txt
	fi
fi
#SE FOR DIA DA SEMANA E ANTES DAS 20 HORAS, O ROTULO SERA: PARCIAL VOIP EM...
if [ $data_atual != "sun" ];then
	if [ $hora_atual -lt "20" ]; then
			echo "===================================" >> parcial_voip.txt
			echo "Parcial VOIP em: $data - $hora" 	   >> parcial_voip.txt
			echo "Hora Última Ligação $ultima_ligacao" >> parcial_voip.txt
			echo "===================================" >> parcial_voip.txt
	fi
fi


#SEQUENCIA DE IFs PARA TESTAR SE A OPERACAO ESTA EM USO OU NAO
#SE A CAMPANHA TESTAR VAZIO, NAO COLOCA O NOME NO ARQUIV DA PARCIAL

#CALLCENTER ATIVO BMG DIGITAL TICKET MÉDIO
if [ -z $(cat PARCIAL_VOIP_* | grep "CALLCENTER ATIVO BMG DIGITAL TICKET MÉDIO") ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG DIGITAL MÉDIO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep "CALLCENTER ATIVO BMG DIGITAL TICKET MÉDIO" | awk '{print $7}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#SUBSTITUINDO O NOME CALLCENTER ATIVO BMG DIGITAL TICKET MEDIO PARA NAO DAR CHOQUE COM CALLCENTER ATIVO BMG DIGITAL
#sed -i 's,CALLCENTER ATIVO BMG DIGITAL TICKET MÉDIO,CABDTM,g' PARCIAL_VOIP_*


#CALLCENTER ATIVO BMG DIGITAL
if [ -z $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG DIGITAL") ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG DIGITAL -----> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG DIGITAL" | awk '{print $5}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG SAQUE ADESAO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG SAQUE ADESÃO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG CAMPANHAS MANUAIS ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG SAQUE ADESÃO" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG STAND ALONE MÉDIO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND ALONE MÉDIO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG STAND ALONE MÉDIO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND ALONE MÉDIO" | awk '{print $7}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#SUBSTITUINDO O NOME DA CAMPANHA ACIMA PARA NAO DAR CHOQUE
#sed -i 's,CALLCENTER ATIVO BMG STAND ALONE MÉDIO,CABSAM,g' PARCIAL_VOIP_*

#CALLCENTER ATIVO BMG STAND ALONE MANHA
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND ALONE MANHA")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE ALTO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND ALONE MANHA" | awk '{print $7}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#SUBSTITUINDO O NOME DA CAMPANHA ACIMA PARA NAO DAR CHOQUE
#sed -i 's,CALLCENTER ATIVO BMG STAND ALONE MANHA,CABSAMA,g' PARCIAL_VOIP_*

#CALLCENTER ATIVO BMG TICKET ALTO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET ALTO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG GRAVADO ALTO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET ALTO" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG TICKET MEDIO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET MÉDIO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG GRAVADO MÉDIO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET MÉDIO" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO PAN SEGURO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO PAN SEGURO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "PAN SEGURO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO PAN SEGURO" | awk '{print $5}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#SUBSTITUINDO O NOME DA CAMPANHA ACIMA PARA NAO DAR CHOQUE
#sed -i 's,CALLCENTER ATIVO PAN SEGURO,CAPS,g' PARCIAL_VOIP_*

#ATENDIMENTO ATIVO LOJA
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "ATENDIMENTO ATIVO LOJA")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "LOJA ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "ATENDIMENTO ATIVO LOJA" | awk '{print $4}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO PAN 
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO PAN")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "PAN GRAVADO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO PAN" | awk '{print $4}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#SUBSTITUINDO O NOME DA CAMPANHA ACIMA PARA NAO DAR CHOQUE
#sed -i 's,CALLCENTER ATIVO PAN,CAP,g' PARCIAL_VOIP_*

#CALLCENTER ATIVO BMG TICKET GOV 
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET GOV")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG GRAVADO GOV ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET GOV" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG REVENDA
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG REVENDA")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG REVENDA ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG REVENDA" | awk '{print $5}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO CONFIRMACAO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO CONFIRMACAO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG ATIVO CONFIRMAÇÃO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO CONFIRMACAO" | awk '{print $4}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG GRAVADO PREMIUM
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG GRAVADO PREMIUM")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG GRAVADO PREMIUM ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG GRAVADO PREMIUM" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG STAND VF ALTO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND VF ALTO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE ALTO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND VF ALTO" | awk '{print $7}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG STAND VF MEDIO
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND VF MEDIO")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE MÉDIO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG STAND VF MEDIO" | awk '{print $7}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO PAN SEGURO 2
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO PAN SEGURO 2")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "PAN SEGURO ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO PAN SEGURO 2" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG TICKET ALTO MANHA
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET ALTO MANHÃ")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG TICKET ALTO MANHA ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET ALTO MANHÃ" | awk '{print $7}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND ALONE ALTO MANHA
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND ALONE ALTO MANHÃ")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE ALTO MANHÃ ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND ALONE ALTO MANHÃ" | awk '{print $5}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND ALONE MÉDIO MANHÃ I
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ I")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE MÉDIO MANHÃ I ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ I" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND ALONE MÉDIO MANHÃ II
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ II")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE MÉDIO MANHÃ II ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ II" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND ALONE MÉDIO MANHÃ III
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ III")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE MÉDIO MANHÃ III ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ III" | awk '{print $6}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND ALONE MÉDIO MANHÃ
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ;")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE MÉDIO MANHÃ ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND ALONE MÉDIO MANHÃ" | awk '{print $5}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND ALONE ALTO TARDE
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND ALONE ALTO TARDE")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE ALTO TARDE ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND ALONE ALTO TARDE" | awk '{print $5}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#CALLCENTER ATIVO BMG GRAVADO MEDIO MANHA
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET MÉDIO MANHÃ")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "BMG GRAVADO MÉDIO MANHA------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "CALLCENTER ATIVO BMG TICKET MÉDIO MANHÃ" | awk '{print $7}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND ALONE ALTO MANHA
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND ALONE ALTO MANHA")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND ALONE ALTO MANHA ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND ALONE ALTO MANHA" | awk '{print $5}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

#STAND_VOIP
if [ -z "$(cat PARCIAL_VOIP_* | grep -w "STAND VOIP")" ]; then
	echo -e "" >> parcial_voip.txt
else
	echo $(echo "STAND VOIP ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | grep -w "STAND VOIP" | awk '{print $3}' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt
fi

echo "===================================" >> parcial_voip.txt
#CALCULA O CUSTO VOIP A PARTIR DAS CAMPANHAS ATIVAS
echo $(echo "Total Geral ------> " | tr -d '\n' && echo $(cat PARCIAL_VOIP_* | sed 's/[a-zA-Z]//g' | sed 's/ //g' | tr '\n' + | sed -r 's/.$//g') | bc) >> parcial_voip.txt

#MOSTRA O RESULTADO DA PARCIAL
cat parcial_voip.txt | awk 'NF>0' > parcialvoip.csv 

#MOSTRA O RESULTADO DA PARCIAL NA TELA 
cat parcialvoip.csv && rm parcial_voip.txt

mv parcialvoip.csv $(date +%Hh30-%d.%m.%y)_gvbparcialvoip.csv

mv *?_gvbparcialvoip.csv /var/www/html/parcialvoip/files


#EXECUTA O SCRIPT FORMATFILE.SH PARA GERAR UM NOVO ARQUIVO CSV - IMPORTANTE PARA FACILITAR A CRIACAO DOS GRAFICOS NO SITE
#sh formatfile.sh

#RENOMEIA O ARQUIVO
#mv out.csv $(date +%Hh30-%d.%m.%y)_gvbparcialvoip.csv

#MOVE O  ARQUIVO PARA A PASTA DO SITE
#mv *?_gvbparcialvoip.csv /var/www/html/parcialvoip/files

#REMOVE O ARQUIVO PARCIAL_VOIP.CSV
rm PARCIAL_VOIP_*

#REMOVE O ARQUIVO DA FSM PARA NAO DAR CHOQUE NAS PROXIMAS PARCIAIS
rm *?8048.csv

#REMOVER O ARQUIVO DA FAST PARA NAO DAR CHOQUE NAS PROXIMAS PARCIAIS
rm relatorio_chamadas_?*

#CHAMANDO O ARQUIVO PARA COLOCAR OS DADOS NO BANCO DE DADOS
sh /home/parcialvoip/insertSqlParcialVoip.sh

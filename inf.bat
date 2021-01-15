:: ARQUIVO EM LOTES RESPONSAVEL POR COLETAR INFORMACOES DO SISTEMA -
:: E "JOGA-LO" NUMA DETERMINADA PASTA PARA REDUZIR TRABALHOS MANUAIS
:: BASICAMENTE ESTA PEGANDO INFORMACOES DE MEMORIA, PROCESSAODR, S.O
:: ,SALVANDO EM UM ARQUIVO PERSONALIZADO, MAPENADO UNIDADE DE REDE E
:: PONTO FINAL.
:: NOME: INF.BAT
:: DESENVOLVIDO POR: vanderson.r.lima
:: DATA: 05.07.2020
:: EMPRESA: GRUPO VICOA BRASIL


::LEVANTANDO INFORMACOES DA MAQUINA
%systemroot%\system32\dxdiag.exe /t %USERPROFILE%\Desktop\tmp.txt

timeout /t 15

::IMPRIMINDO AS DOZE PRIMEIRAS LINHAS DO ARQUIVO
findstr /n ^^ tmp.txt | findstr "^[1-9]: ^1[0-2]:" > ~tmp.txt

::timeout /t 1

::DELETANDO ARQUIVO DESNECESSARIO
del tmp.txt

timeout /t 1

::COLOCANDO NO ARQUIVO A INFORMACAO DOS DISCOS DO PC
wmic logicaldisk get name, size >> ~size.txt

::timeout /t 1

::FORMATANDO ARQUIVOS 
more ~tmp.txt >> GVB-PC.txt
timeout /t 1

echo --------------------- >> GVB-PC.txt
::timeout /t 1
echo INFORMACOES DO HD >> GVB-PC.txt
::timeout /t 1
echo --------------------- >> GVB-PC.txt
::timeout /t 1
more ~size.txt >> GVB-PC.txt
timeout /t 1

::DELETANDO ARQUIVOs DESNECESSARIOs
del ~size.txt
timeout /t 1

del ~tmp.txt
timeout /t 1

::MAPEANDO UNIDADE DE REDE
net use * "\\999.999.99.999\Repositorio de Documentos TI\Inventario"
timeout /t 1

::COPIANDO O ARQUIVO PARA A PASTA CORRETA
xcopy GVB-PC.txt Z:\
timeout /t 1

::ENTRANDO NA UNIDADE DE DISCO MAPEADA
::Z:

::DESCONETANDO DA UNIDADE DE REDE
net use Z /delete
timeout /t 1

::MSG * TUDO CERTO E NADA ERRADO
timeout /t 1
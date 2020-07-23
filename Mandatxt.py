
#Script pega output do python e envia para um arquivo .txt

##Modo W
arquivo = open('C:\Users\lucas\Desktop\comunica\arq01.txt','w')
arquivo.write("Hoje está um lindo dia !! \n")
arquivo.close()

#Lendo o arquivo criado:
arquivo = open('C:\Users\lucas\Desktop\comunica\arq01.txt','r')
for linha in arquivo:
    linha = linha.rstrip()
    print (linha)
arquivo.close()
    
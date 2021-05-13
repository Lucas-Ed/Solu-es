#----Principais comandos para usar Git e Github no Rstudio------------------------#

# Usei como referência o material abaixo da beatriz
# Material de apoio: https://beatrizmilz.com/git_rstudio.html

# Instalação de pacotes
# Instalar o Pacote usethis

install.packages("usethis")
library(usethis)

#----------------------------------------------------------------------------------
#Configurando o Git
#Informar para o Git seu nome, e email.

# Utilize o mesmo email associado à sua conta do GitHub.

# Duas possibilidades: no terminal (linha de comando) ou com uma função do usethis.

# Com o usethis:

usethis::use_git_config(# Seu nome
  user.name = "seu nome aqui", 
  # Seu email
  user.email = " seu.email@hotmail.com")
#-----------------------------------------------------------------------------------
# Configurando o Git
# No terminal (Substitua pelo seu nome e email vinculado à conta do GitHub):

# git config --global user.name "seu nome aqui"
# git config --global user.email seu.email@hotmail.com

#--------------------------------------------------------------------------------------

# Configurando o GitHub + RStudio
# Abra o arquivo .Renviron usando a seguinte função:

usethis::edit_r_environ()
# * Edit 'C:/Users/beatr/Documents/.Renviron'
# * Restart R for changes to take effect

# Criar um novo token no GitHub:

usethis::browse_github_token()
# ??? Opening URL 'https://github.com/settings/tokens/new?scopes=repo,gist&description=R:GITHUB_PAT'
# ??? Call `usethis::edit_r_environ()` to open '.Renviron'.
# ??? Store your PAT with a line like:
#   GITHUB_PAT=xxxyyyzzz
#   [Copied to clipboard]
# ??? Make sure '.Renviron' ends with a newline!

# Uma página do GitHub irá abrir, com as configurações necessárias.
# Você pode alterar o nome do token, para saber em qual computador está vinculando.
# Crie o novo token.

# Abra o arquivo .Renviron:

usethis::edit_r_environ()
# ??? Modify 'C:/Users/beatr/Documents/.Renviron'
# ??? Restart R for changes to take effect
# Crie uma nova linha na forma GITHUB_PAT=SEU_TOKEN, adicione o token, pule uma linha e salve o arquivo.
# Reinicie o RStudio: CTRL + SHIFT + F10




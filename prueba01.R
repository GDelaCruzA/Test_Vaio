# R script agregado para verificar la configuración y el acceso a Github
# RStudio funciona como el SSH agent frente al servidor solo dando de alta
# la clave ssh pública en el sitio.
# 
# Verificar si puede distinguir diferentes accesos desde clientes distintos
# con su propia clave ssh generada localmente por el mismo RStudio
# Salele
# 
citation()

R.Version()

# cada vez que se hace un push, se tiene que proporcional el id y psswrd de
# Github; se supone que con 
# git config remote.origin.url git@github.com:GDelaCruzA/yourprojectname.git
# ya no lo hace
# 
# la operación pide confirmar que se quiere agregar el host al uso de la ssh
# luego hay que confirmar con la passfrase que originó la ssh y luego
# se supone que ya preguntará nada de aquí en adelante.
# Veremos...
# 
# Después de la siguiente configuración, que se tiene que hacer desde la 
# consola 'shell' (en la pestaña de Git, el engrane de configuración > Shell)
# para activar el ssh agent
# 
#       eval $(ssh-agent -s)
# 
# contesta con un número de identificación; luego hay que proporcionarle 
# la clave pública de nuestra 'securty shell' ssh
# 
#       ssh-add ~/.ssh/id_rsa
# 
# contesta preguntando la passphrase que se uso para generar la ssh;
# después de proporcionarla, contesta que se agregó la identidad.
# 
# Para verificar si todo está correcto, se prueba con
# 
#       ssh -T git@github.com
#
#que contesta con 
#
# Hi your_username! You've successfully authenticated, but GitHub does 
#   not provide shell access.
#   
# finalmente, parece cuestión de Windows, cada proyecto debe de habilitarse
# mediante la siguiente instrucción en la Shell:
# 
# git config remote.origin.url git@github.com:your_username/your_project.git
# 
# en la Terminal no fununcia, por lo que lo hacemos en la Shell...
# 
# No contesta nada a menos que haya algun error...
# y luego volvemos a probar con este commit
# 
# 
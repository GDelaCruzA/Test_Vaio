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
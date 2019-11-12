#! /bin/bash 

# Muestra si el usuario es root.
if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'
	# Pide el nombre usuario.
	read -p 'Introduzca nombre de usuario: ' USER

	# Pide nombre real.
	read -p 'Nombre de la persona que usara esté usuario: ' NOMBRE

	# Pide el password.
	read -p 'Enter the password to use for the account: ' PASSWORD

	# Crea el user.
	useradd -c "${NOMBRE}" -m ${USER}
else
  echo 'You are not root.'
fi



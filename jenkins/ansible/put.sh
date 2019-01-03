#!/bin/bash


counter=0

while [ $counter -lt 50 ]; do
	let counter=counter+1

	#obtener el nombre de la primera columna
	name=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
	#obtener el nombre de la segunda columna
    apellido=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
    #rango de edades
    edad=$(shuf -i 20-25 -n 1)

	mysql -u root -p1234 people -e "insert into registro values ($counter, '$name', '$apellido', $edad)"
	echo "$counter, $name, $apellido, $edad se importaron correctamente"
        sleep 7
done

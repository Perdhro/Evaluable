rutaFichero=`pwd`
echo "El fichero que se va a usar tiene que estar en la ruta $rutaFichero "   
echo "¿Cual es el archivo que vamos a leer?. Recuerde incluir la extension."
read archivo
echo "El archivo a a leer es $archivo"
if [ -f $rutaFichero/$archivo ];then
    
    existe=true;
    else
	existe=false;
fi
while [ $existe = false ];
do
	echo "El archivo no existe, por favor ingrese un archivo que existe"
	read archivo
	if [ -f $rutaFichero/$archivo ];then
	   
    existe=true;
    else
	existe=false;
	fi
done

totalGrupos=`grep -c '.*' $archivo`;


echo "El total de grupos es $totalGrupos"
x=1;
for i in $(cat $archivo | awk '{print NF}')
do    
    nombreGrupo=`awk 'NR=='$x'' $archivo |awk '{print $1}'`;
    echo "$nombreGrupo $((i-1)) usuarios";
    ((x++))
done

    




    
       
    


#!/bin/bash

    
    while read linea;do

        material=`echo $linea | awk '{print $1}'`
        cantidad=`echo $linea | awk '{print $2}'`
        precio=`echo $linea | awk '{print $3}'`

        if [ $cantidad -lt 10 ];then
            echo "Quedan menos de 10 $material"
        fi

        total_inventario=$(( total_inventario + ( cantidad * precio )))
    done < stock.txt
    
    echo $total_inventario
#!/bin/bash
    
    usuario=$1  

    while read linea;do

        nombre=`echo $linea | awk '{print $1}'`
        hora=`echo $linea | awk '{print $2}'`

        total_conec=$(())

        
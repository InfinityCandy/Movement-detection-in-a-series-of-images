%%Función que calcula el promedio de la imagenes (fondo)

function[promedioImagenes] = calcularFondo(pathImagenes, indexImagenes, cantidadImagenes)
    
    %%Obtenemos la imagen incial
    pathImagenInicial = sprintf('%s%s', pathImagenes, indexImagenes(1).name);
    sumaImagenes = imread(pathImagenInicial);
    
    for i = 2:cantidadImagenes
        disp('Calculando fondo');
        fprintf("Leyendo imagen: %d\n", i);
        
        %%Obtenemos imagen por imagen para calcular el fondo
        pathImagenActual = sprintf('%s%s', pathImagenes, indexImagenes(i).name);
        imgenActual = imread(pathImagenActual);
        
        %%Sumamos imagen por imagen
        sumaImagenes = double(sumaImagenes) + double(imgenActual);
        clc;
    end
    
    %%Calculamos el promedio de las imagenes
    promedioImagenes = uint8(sumaImagenes/cantidadImagenes);
end
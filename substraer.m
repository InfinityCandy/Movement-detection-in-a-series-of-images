function [diferencias] = substraer(pathImagenes, cantidadDeImagenes, indexImagenes, imagenDeFondo)

   diferencias = cell(1, cantidadDeImagenes);
    
    for i = 1:cantidadDeImagenes
        disp('Calculando diferencias con el fondo');
        fprintf("Leyendo imagen: %d\n", i);
        %%Obtenemos imagen por imagen para calcular la diferencia
        pathImagenActual = sprintf('%s%s', pathImagenes, indexImagenes(i).name);
        imgenActual = imread(pathImagenActual);
        
        diferencias{i} = uint8(abs(double(imagenDeFondo) - double(imgenActual)));
        clc;
    end
end
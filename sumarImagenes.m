function [marcaDeMovimiento] = sumarImagenes(pathImagenes, cantidadDeImagenes, indexImagenes, imagenesDeDiferencia, imagenDeFondo)

    marcaDeMovimiento = cell(1, cantidadDeImagenes);
    
    for i = 1:cantidadDeImagenes
        disp('Sobreponiendo imagenes de movimeinto');
        fprintf("Leyendo imagen: %d\n", i);
        pathImagenActual = sprintf('%s%s', pathImagenes, indexImagenes(i).name);
        imgenActual = imread(pathImagenActual);
    
        marcaDeMovimiento{i} = double(imagenesDeDiferencia{i}) + double(imgenActual);
        marcaDeMovimiento{i} = corregir(marcaDeMovimiento{i}, 255);
        
        clc;
    end
end
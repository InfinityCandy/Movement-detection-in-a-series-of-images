function[imagenesUmbralizadas] = umbralizarImagenesDeDiferencias(cantidadDeImagenes, imagenesDeDiferencia, sigma)

   imagenesUmbralizadas = cell(1, cantidadDeImagenes);
    
   for i = 1:cantidadDeImagenes
        disp('Umbralizando imagenes de la diferencia');
        fprintf("Leyendo imagen: %d\n", i);
        I = imagenesDeDiferencia{i};
        imagenesUmbralizadas{i} = umbralizar(I, max(max(max(I)))*sigma);
        clc;
   end

end
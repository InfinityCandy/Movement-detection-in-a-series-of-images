clear all;
close all;
clc;

%%Here are the values of sigma that I worked with.
sigma = 0.50;
%%sigma = 0.25;

tic;
pathImagenes = ''; %%Here you put the path of your sequence of images
fprintf('%s %s\n','Directorio de las imagenes:', pathImagenes);

fn = sprintf('%s*.jpg',pathImagenes); %%You have to change the '.jpg' extension for the extension you are working with.
indexImagenes = dir(fn);
cantidadDeImagenes = length(indexImagenes); 
fprintf('%s %d\n','Cantidad de imagenes: ', cantidadDeImagenes); 

pause(5);

%%Obtener imagen de fondo
imagenDeFondo = calcularFondo(pathImagenes, indexImagenes, cantidadDeImagenes);
imwrite(imagenDeFondo, '');

imagenesDeDiferencia = substraer(pathImagenes, cantidadDeImagenes, indexImagenes, imagenDeFondo);

imagenesDeDiferencia = umbralizarImagenesDeDiferencias(cantidadDeImagenes, imagenesDeDiferencia, sigma);

imagenesDeDiferencia = sumarImagenes(pathImagenes, cantidadDeImagenes, indexImagenes, imagenesDeDiferencia, imagenDeFondo);

crearVideo(cantidadDeImagenes, imagenesDeDiferencia);

disp('Video creado!');

toc;



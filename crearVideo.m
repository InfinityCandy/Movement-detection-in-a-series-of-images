function [] = crearVideo(cantidadDeImagenes, imagenesResultado)
    faviname = ''; %%Here is where you specifie the path where you are going to storage your video
    video = VideoWriter(faviname);
    video.FrameRate=60;
    video.Quality=100;
    open(video);

    for i=1:1:cantidadDeImagenes
        disp('Creando video');
        fprintf("Leyendo imagen: %d\n", i);
        
        figure(1); imagesc(imagenesResultado{i}); colormap(gray);
        pause(0.05);
        frameN = getframe(1); 
        writeVideo( video, frameN);
        
        clc;
    end;
    
    close(video);
    
end
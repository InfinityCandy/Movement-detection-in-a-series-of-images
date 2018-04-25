function[G] = corregir(I, valmax)
    G=zeros(size(I));
    I=round(I); %%Corregir valores decimales
    for k=1:size(I,3) %%Canales de color
        valMin=min(min(I(:,:,k)));
        if(valMin<0)
            i(:,:,k)=I(:,:,k)+abs(valMin);
        end;
        valSup=max(max(I(:,:,k)));
        if(valSup>valmax)
            I(:,:,k)=(I(:,:,k)*valmax)/valSup;
        end;
    end;
    G=uint8(round(I));
end
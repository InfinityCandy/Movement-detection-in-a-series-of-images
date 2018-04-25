function [G] = umbralizar(I, sigma)
    sigma1=sigma(1);
    
    G=zeros(size(I,1), size(I,2));
    for i=1:size(I,1) %%Renglones
        for j=1:size(I,2)
            valor = max(I(i,j,:));
            if(valor>=sigma1)
                G(i,j,:)=255;
            end;
        end;
    end;
    G=uint8(G)
end
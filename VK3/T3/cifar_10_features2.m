function [f] = cifar_10_features2(I,N)
M=reshape(I,[32,32,3]);
num=32/N;
f =[];
for x_i=1:num
    for y_i=1:num
        I_R=M((x_i-1)*N+1:x_i*N,(y_i-1)*N+1:y_i*N,1);
        I_G=M((x_i-1)*N+1:x_i*N,(y_i-1)*N+1:y_i*N,2);
        I_B=M((x_i-1)*N+1:x_i*N,(y_i-1)*N+1:y_i*N,3);
        mR=mean(mean(I_R));%mR=mean(I_R(:))
        mG=mean(mean(I_G));%mG=mean(I_G(:))
        mB=mean(mean(I_B));%mB=mean(I_B(:))
        f_RGB=[mR,mG,mB];
        f=[f f_RGB];
    end
end
        
end

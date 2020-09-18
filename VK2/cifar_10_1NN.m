function [NN_label] = cifar_10_1NN(x,tr_data,tr_labels)

mse_vector = zeros(size(tr_data,1),1);

for row = 1:10000(tr_data,1);
    err = immse(x, tr_data(row,:));
    mse_vector(row,1) = err;
end

[~,index] = min(mse_vector);
NN_label = tr_labels(index);

end
    
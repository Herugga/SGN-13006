
NN_labels = zeros(30,1);


for row = 1:30
    NN_labels(row) = cifar_10_1NN(te_data(row,:),tr_data,tr_labels);
    disp(row);
end

cifar_10_evaluate(NN_labels,te_labels(1:30))

    

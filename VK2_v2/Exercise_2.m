% a = [1 0 1 1];
% b = [0 0 1 0];
% accuracy = cifar_10_evaluate(a,b);
 cifar_10_evaluate(te_labels,labels);

% Input all CIFAR-10 test samples
random_labels = cifar_10_rand(te_data);
cifar_10_evaluate(random_labels,labels);

NN_labels = zeros(size(te_data,1),1);
for row = 1:size(te_data,1);
    NN_labels(row,:) = cifar_10_1NN(te_data(row,:),te_data,te_labels);
end
cifar_10_evaluate(NN_labels,te_labels)
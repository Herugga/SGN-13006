function [random_label] = cifar_10_rand(input_data)
[rows, columns] = size(input_data);
random_label = randi([1 10],rows,1);
end


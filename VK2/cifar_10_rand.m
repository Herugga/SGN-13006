function [random_label] = cifar_10_rand(input_data)
[rows, columns] = size(input_data);
random_label = randi([0,9],rows,columns);
end


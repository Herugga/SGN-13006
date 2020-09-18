function [NN_label] = cifar_10_1NN(x,data,labels)
NN_label = 0;
for row = 1:size(data,1)
    distance = (sum( x - data(row,:)))^2;
    if row == 1
        smallest = distance;
    else
        if distance < smallest
            smallest = distance;
            NN_label = labels(row,1);
        end
    end
end


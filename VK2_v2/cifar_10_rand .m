function [rand] = cifar_10_rand(x)
    rand = zeros(length(x),1);
    for i = 1:length(x)
        r = randi(11) - 1;
        rand(i) = r;
    end
    acc = cifar_10_evaluate(rand, x);
end
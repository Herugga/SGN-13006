function [labels] = cifar_10_1NN(x, trdata, trlabels)
    match = -1;
    [n, m, k] = size(x);
    labels = zeros(n, 1);
    for i = 1:n
        y = Inf;
        for j = 1:length(trdata)
            V = im2single( x(i,:) ) - im2single( trdata(j,:) );
            newy = sqrt(V*V');
            if newy < y
                y = newy;
                match = j;
            end
        end
        labels(i) = trlabels(match);
        if mod(i,1) == 0
            disp([num2str(100*i/n) ' %']);
        end
end
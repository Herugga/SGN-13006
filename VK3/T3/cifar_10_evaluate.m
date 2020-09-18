function [acc] = cifar_10_evaluate(pred, gt)
    s = 0;
    for i = 1:length(gt);
        if gt(i) == pred(i);
            s = s + 1;
        end
    end
    
    ctr = zeros(10, length(gt));
    for i =1:length(gt)
        ctr(gt(i)+1,i) = 1;
    end
    ctt = zeros(10, length(pred));
    for i =1:length(pred)
        ctt(pred(i)+1,i) = 1;
    end
    figure, plotconfusion(ctr, ctt);
    acc = (s / length(gt)*100);
    disp(['Accuracy is: ', num2str(acc) ' %']);
end
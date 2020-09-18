function [accuracy] = cifar_10_evaluate(pred,gt)
accuracy = (1 - (sum(pred~=gt) / length(pred))) * 100;
fprintf('Accuracy is %2.3f percent. \n',accuracy)
end


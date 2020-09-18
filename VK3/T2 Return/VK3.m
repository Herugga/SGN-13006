%% T1
tr_features = zeros(size(tr_data,1),3);
[mu,sigma,p] = cifar_10_bayes_learn(tr_data,tr_labels);
num = 10000;
for i=1:num
    f = cifar_10_features(te_data(i,:));
    c(i) = cifar_10_bayes_classify(f,mu,sigma,p);
end
    
 acc = accuracy(c,te_labels(1:num))
 C=confusionmat(te_labels(1:num),uint8(c)');

 
 %% T2
clear c;
clear acc;
num=10000;
[mu2, SIGMA, prob] = cifar_10_bayes_learn(tr_data, tr_labels);
 

bayes_classes2 = zeros(size(te_data,1),1);
for row = 1:size(te_data(i,:,1))
    f = cifar_10_features(te_data(i,:));
    c2(i) = cifar_10_bayes_classify2(f,mu,SIGMA,prob);
end
acc2 = accuracy(c2,te_labels(1:num))
acc2 = cifar_10_evaluate( c2, labels)

% end
% plot([4,8,16,32],acc)

%% T3

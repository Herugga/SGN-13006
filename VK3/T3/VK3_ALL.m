%% Exercise 1
tic
% run('cifar_10_read_data.m')

% Training phase
% Let's save all training features to tr_features
tr_features = zeros(size(tr_data,1),3);
for row = 1:size(tr_data,1)
    image = tr_data(row,:);
    tr_features(row,:) = cifar_10_features(image,32);
end

% Let's calculate all mean values for each class+channel combo
[mu, sigma, prob] = cifar_10_bayes_learn(tr_features, tr_labels);

% Test phase       

for row = 1:size(te_data,1)
    image = te_data(row,:);
    te_features(row,:) = cifar_10_features(image,32);
end

bayes_classes = zeros(size(te_data,1),1);
for row = 1:size(te_features,1)
    bayes_classes(row,:) = cifar_10_bayes_classify(te_features(row,:),mu,sigma,prob);
end

cifar_10_evaluate(bayes_classes,labels)
toc

%% Exercise 2
tic

[mu2, SIGMA, prob] = cifar_10_bayes_learn2(tr_features, tr_labels);

bayes_classes2 = zeros(size(te_data,1),1);
for row = 1:size(te_features,1)
    bayes_classes2(row,:) = cifar_10_bayes_classify2(te_features(row,:),mu,SIGMA,prob);
end

cifar_10_evaluate( bayes_classes2, labels)
toc
%% Exercise 3
N_data = [];
for N = [32 16 8 4]
    tic
    N
    Nrow = (32*32)/(N*N); % N is wanted sub-window size and Nrow is sub-window count number
    col_num = (32*32)/(N*N);

    tr_features = zeros(size(tr_data,1),3*col_num);
    for row = 1:size(tr_data,1)
        image = tr_data(row,:);
        tr_features(row,:) = cifar_10_features(image,N);
    end

    [mu, SIGMA, prob] = cifar_10_bayes_learn2(tr_features, tr_labels);

    te3_features = zeros(size(te_data,1),3*col_num);
    for row = 1:size(te_data,1)
        image = te_data(row,:);
        te3_features(row,:) = cifar_10_features(image,N);
    end

    bayes_classes3 = zeros(size(te3_features,1),1);
    for row = 1:size(te3_features,1)
        bayes_classes3(row,:) = cifar_10_bayes_classify2(te3_features(row,:),mu,SIGMA,prob);
    end  
    N_data = [N_data; cifar_10_evaluate(bayes_classes3, labels), N]
    toc
end
figure;
axis([3 33 0 50])
scatter(N_data(:,2),N_data(:,1));

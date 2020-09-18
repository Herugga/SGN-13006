function [mu2,sigma,prob]=cifar_10_bayes_learn2(F,labels,N) 
mu2=[];%sigma=[];
% covi=[];
%  my_covs(10).cov=[];
for i=0:max(labels)
    %p(i+1)=sum(labels==i)/length(labels); %the probability 
    index1=find(labels==i);
     FF=F(index1(:),:);%FF:F find
     f=[];
     for j=1:size(FF,1)%
         f(j,:)=cifar_10_features2(FF(j,:),N);
     end
     
     mu2(i+1,:)=mean(f,1);
    % sigma(i+1,:)=std(f,1);
     sigma(i+1).cov=cov(f);
        
end

end


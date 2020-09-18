function c=cifar_10_bayes_classify2(f,mu,covs)

for i=1:10
   
% PC(i)=mvnpdf(f(1),mu(i,1),sigma(i,1))*mvnpdf(f(2),mu(i,2),sigma(i,2))...
    %  *mvnpdf(f(3),mu(i,3),sigma(i,3))*p(i);
    
    PC(i)=mvnpdf(f,mu(i,:),covs(i).cov);
end
 [~,c]=max(PC);
 c=c-1;

end


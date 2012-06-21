function y = t_term(tji,alpha,gamma)

y=0;
count=0;

for j=1:size(tji,1);
for t=unique(tji{j})
y=y-gammaln(length(find(tji{j}==t)));
end
y=y+gammaln(200+alpha)-gammaln(alpha);
count=count+length(unique(tji{j}));
end
y=y-count*log(alpha)+gammaln(count+gamma)-gammaln(gamma);


end

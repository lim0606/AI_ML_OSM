function y = t_term(tji,alpha,gamma,mj,i)

y=0;
count=0;

if(size(tji,1)~=1)
%for all restaurants
for j=1:size(tji,1);
for t=unique(tji{j})
y=y-gammaln(length(find(tji{j}==t)));
end
y=y+gammaln(length(tji{j})+alpha)-gammaln(alpha);
count=count+length(unique(tji{j}));
end

y=y-count*log(alpha)+gammaln(count+gamma)-gammaln(gamma);
else
%for one restaurant

for t=unique(tji)
y=y-gammaln(length(find(tji==t)));
end
%y=y+gammaln(length(tji)+alpha)-gammaln(alpha);
y=y-mj(i)*log(alpha)+gammaln(sum(mj)+gamma);
end


end
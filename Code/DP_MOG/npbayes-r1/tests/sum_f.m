function y=sum_f(class,tji,prior)
y=0;
%tmp=[1];
for i=1:length(class)
    if(~isempty(class{i}))       
    y=y+class{i}.F;
    %tmp=[tmp,class{i}.F];
    end
    %{
    if(tmp(end)<0)
    break;
    end
    %}
end

%{
for i=1:length(class)
if(~isempty(class{i}))
    y=y+test_tt(class{i},prior);
end
end


for i=1:length(class)
if(~isempty(class{i}))
    w=w-gammaln(class{i}.Nc)-log(prior.gamma);
end
end
%}    
%t_term(tji,prior.alpha,prior.gamma)
%y

y=y+t_term(tji,prior.alpha,prior.gamma);
end
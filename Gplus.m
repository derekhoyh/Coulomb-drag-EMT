function output=Gplus(Q,W,a,mutilde)

output=integral(@(u) sqrt(u.^2-1)./(exp(0.5.*abs(Q.*u+W)-a.*mutilde)+1),1,Inf,'ArrayValued',true,'RelTol',1e-4);

end
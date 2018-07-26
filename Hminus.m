function output=Hminus(Q,W,a,mutilde)

output=integral(@(u) sqrt(1-u.^2)./(exp(0.5.*abs(Q.*u-W)-a.*mutilde)+1),-1,1,'ArrayValued',true,'RelTol',1e-4);

end
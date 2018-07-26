function output=Hminusstat(eta,ktilde,mutilde,a)

output=integral(@(u) sqrt(1-(u.^2))./(exp(abs(eta.*ktilde.*u)-a.*mutilde)+1),-1,1,'ArrayValued',true,'RelTol',1e-4);

end
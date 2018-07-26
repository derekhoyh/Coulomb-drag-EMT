function output=gfun(mutilde,q,w)

 b=(abs(w) > q);
 output(b)=-0.5.*q.*integral(@(z) sqrt(1-z.^2)./sqrt(abs(w(b).^2-q.^2)).*I(z,q,w(b),mutilde).*Kfun(z,q,w(b)),0,1,'ArrayValued',true,'RelTol',1e-4,'AbsTol',1e-4);

 b=(abs(w) == q);
 output(b)= 0;

 b=(abs(w)<q);
 output(b)=0.5.*q.*integral(@(z) sqrt(z.^2-1)./sqrt(abs(q.^2-w(b).^2)).*I(z,q,w(b),mutilde).*Kfun(z,q,w(b)),1,1e3,'ArrayValued',true,'RelTol',1e-4,'AbsTol',1e-4);

end
function output=qintegrand(q,dspacertilde,mutildeA,mutildeP)

output=integral( @(w) 1./(2.*pi) .* NLS2d(mutildeA,q,w).*NLS2d(mutildeP,q,w) ./ (q.* (sinh(w./2)).^2 ) .* ...
    exp(-2.*q.*dspacertilde)./(abs(dielec(q,w,dspacertilde,mutildeA,mutildeP))).^2, 0,10, 'RelTol',1e-4);

end
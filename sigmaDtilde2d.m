function output=sigmaDtilde2d(dspacertilde,mutildeA,mutildeP)

output= integral( @(q) qintegrand(q,dspacertilde,mutildeA,mutildeP), 0,20,'ArrayValued',true,'RelTol',1e-4);

end
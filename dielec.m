function output=dielec(Q,W,dtilde,mutilde1,mutilde2)

alpha=0.568231496731503;

Kai1=ReKai(Q,W,mutilde1)+ 1i.*ImKai(Q,W,mutilde1);
Kai2=ReKai(Q,W,mutilde2)+ 1i.*ImKai(Q,W,mutilde2);

    output= (1 - 2.*pi.*alpha./Q.*Kai1).*(1 - 2.*pi.*alpha./Q.*Kai2) - ...
    4.*pi.^2.*alpha.^2./(Q.^2).*exp(-2.*Q.*dtilde).*Kai1.*Kai2; 
% There was a missing square on pi in 4*pi. Corrected on Jan 7th 2016!

end
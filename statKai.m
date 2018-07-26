function output=statKai(eta,ktilde,mutilde)

output=1./pi.* (-2.*log(1+exp(mutilde)) -2.*log(1+exp(-mutilde)) + eta.*ktilde .* ...
    (-pi./2 + Hminusstat(eta,ktilde,mutilde,1) + Hminusstat(eta,ktilde,mutilde,-1) ) ...
    );

end
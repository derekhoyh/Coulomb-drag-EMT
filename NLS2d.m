function output=NLS2d(mutilde,q,w)

% This gives dimensionless Gamma. Multiply by -N*e/(hbar*vf) to get the
% full dimensional value of Gamma in SI units.

output=1./(4.*pi).*q.*gfun(mutilde,q,w); 
% The extra factor of 2 by Boris has been corrected above by replacing
% 1/2pi with 1/4pi.

end
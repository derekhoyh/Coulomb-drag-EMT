function output=dielecstat(eta,ktilde,mutilde)

alpha=0.568231496731503;

output=1 - pi.*alpha./(eta.*ktilde) .* statKai(eta,ktilde,mutilde);

end
function output=Theta(x) 

output=zeros(1,length(x));
output(x >= 0)=1;
    
end
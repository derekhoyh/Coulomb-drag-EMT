function output=Kfun(z,q,w)

%the ones are where tau used to be.

output=(z.*w-q)./(z.*q-w).*1 - ...
    (z.*w+q)./(z.*q+w).*1;

end
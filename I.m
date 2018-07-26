function output=I(z,q,w,mutilde)
    output=tanh((0.5.*(z.*q+w)+mutilde)./2)-tanh((0.5.*(z.*q+w)-mutilde)./2)+tanh((0.5.*(z.*q-w)-mutilde)./2)-tanh((0.5.*(z.*q-w)+mutilde)./2);
end

function [ESamp,tauSamp]=gentaudata(dimp,mutilde,nimp,T)
% tic
ESamp=[0 1e-9:1e-9:9e-9 1e-8:1e-8:9e-8 1e-7:1e-7:9e-7 1e-6:1e-6:9e-6 1e-5:1e-5:9e-5 1e-4:1e-4:9e-4 1e-3:1e-3:9e-3 1e-2:1e-2:9e-2 1e-1:1e-2:9e-1 1:1e-2:9.99 10:1e-1:99.9 100:1:999 1e3:10:9990 1e4:1e2:1.1e4];
tauSamp=tauimptilde3(ESamp,dimp,mutilde,nimp,T);
% toc
end
function sigmaDloop(sb)

% sb = batch number
% l1 = lower limit of row number
% l2 = upper limit of row number

b=str2num(sb);

lmat=[1 20; 21 29; 30 36; 37 42; 43 47; 48 51; 52 55; 56 58; 59 61];

l1=lmat(b,1);
l2=lmat(b,2);

maxNumCompThreads(1);

T=70;
% dimpP=20e-9;
% dimpA=10e-9;
hbar=1.054571800e-34;   	
vf=1.1e6;  
kB=1.38064852e-23;	
nimp=5e14; %nimp= 5 x 10^10 cm^-2.
dspacer=9e-9;
nA=[0:1:20 22:2:100]; %in units of 10^10 cm^-2.
nP=nA;
EF=hbar*vf*sqrt(pi.*nA.*1e14);
TF=EF./kB;
mutildeA=Fmu(T./TF).*EF./(kB.*T);
mutildeP=mutildeA;

sigmadrag=zeros(length(mutildeP),length(mutildeA));
 
kB=1.38064852e-23;
hbar=1.054571800e-34;   
vf=1.1e6;   

dspacertilde=kB.*T.*dspacer./(hbar.*vf);
save(['sigmadragvals' num2str(b) '.mat'],'T','nA','nP','mutildeA','mutildeP','sigmadrag','dspacertilde','EF','TF');

for j=l1:l2
    for k=1:j
    diary(['sigmaDs' num2str(b) '.txt']);
    tic
    sigmadrag(j,k)=sigmaDtilde2d(dspacertilde,mutildeA(k),mutildeP(j)); 
    toc
    save(['sigmadragvals' num2str(b) '.mat'],'T','nA','nP','mutildeA','mutildeP','sigmadrag','dspacertilde','EF','TF','-append');
    diary off;
    end
end


end
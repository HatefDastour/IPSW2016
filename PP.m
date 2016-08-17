function [N] = PP(P,NT)
N=zeros(1,17);
P1=P;
for n=1:NT;
    if (n==1)
        for i=1:17
            if P(i,17) < 0.5
                N(i)=n;
            end
        end
    elseif (n>1)
        P=P*P1;
        for i=1:17
            if P(i,17) < 0.5
                N(i)=n;
            end
        end
    end
end
end
function [ A ] = multiplicity( A,root,fn )
i=1;
syms x
df= diff(fn,x);
while( subs(df,root)==0)
    i=i+1;   
    df= diff(df,x);

end
j=1;
while(j<=i)
   A=[A;root]; 
   j=j+1;
end 
end


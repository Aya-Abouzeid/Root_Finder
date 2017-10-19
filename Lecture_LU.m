function [o,a,x] = Lecture_LU( eqs )
format long
z=size(eqs);
n=z(1);
o=zeros(n,1);
a=zeros(n,n);
b=zeros(n,1);
L_MATRIX=zeros(n,n);
Upper_Matrix=zeros(n,n);
for j = 1:n
    o(j,1)=j;
    L_MATRIX(j,j)=1;
end
for i = 1:n
    x = sprintf('x%d',i);
    assignin('caller',x,sym(x));
end
i=1;
symbolEQS=[];
while(i<=n)
S=sym(eqs{i});
symbolEQS=[symbolEQS;S];
i=i+1;
end
[A, B] = equationsToMatrix(symbolEQS);
i=1;
while(i<=n)
a(i,:)=A(i,:);
b(i,1)=B(i,:);
i=i+1;
end
for k = 1 : n-1 
[ o,a ]=pivott(k,a,o,n);
for i = k+1 : n 
factor = a(o(i),k) / a(o(k),k);
a(o(i),k) = factor;
for j = k+1 : n
a(o(i),j) = a(o(i),j) - factor * a(o(k),j);
end
end
end
y=zeros(n,1);
y(o(1)) = b(o(1));
for i = 2 : n 
sum = b(o(i));
for j = 1 : i-1
sum = sum - a(o(i),j) * y(o(j));
end
y(o(i)) = sum;
end
x=zeros(n,1);
x(n) = y(o(n)) / a(o(n),n);
for i = n-1  : -1 :  1 
sum = 0;
for j = i+1 : n
sum = sum + a(o(i),j) * x(j);
end
x(i) = (y(o(i))-sum) / a(o(i),i);
end
end
 
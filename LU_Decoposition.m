function [ solution ] = LU_Decomposition(eqs)
format long
z=size(eqs);
Number=z(1);
equations=zeros(Number,Number+1);
for i = 1:Number
    x = sprintf('x%d',i);
    assignin('caller',x,sym(x));
end
i=1;
symbolEQS=[];
while(i<=Number)
S=sym(eqs{i});
symbolEQS=[symbolEQS;S];
i=i+1;
end
[A, b] = equationsToMatrix(symbolEQS);
i=1;
while(i<=Number)
equations(i,1:Number)=A(i,:);
equations(i,Number+1)=b(i,:);
i=i+1;
end
disp(equations)
b=size(equations);
length=b(1,1);
L_Matrix=zeros(length,length);
d=zeros(length,1);
solution=zeros(length,1);
index1=1;
while(index1<length)
     L_Matrix(index1,index1)=1;
   [equations,L_Matrix]=Partial_Pivoting( equations,index1,L_Matrix);
    index2=index1+1;
    while(index2<=length)
        L_Matrix(index2,index1)=equations(index2,index1)/equations(index1,index1);
        equations(index2,1:length)= equations(index2,1:length)-L_Matrix(index2,index1)*equations(index1,1:length);
        index2=index2+1;
    end
    index1=index1+1;
    if(index1 == length)
       L_Matrix(index1,index1)=1; 
    end
end
index1=1;
while(index1<=length)
index2=index1-1;
d(index1)=equations(index1,length+1);
while(index2>=1)
d(index1)=d(index1)-L_Matrix(index1,index2)*d(index2);    
index2=index2-1;
end
index1=index1+1;
end
index1=length;
while(index1>=1)
index2=length;
solution(index1)=d(index1);
while(index2>index1)
solution(index1)=solution(index1)-equations(index1,index2)*solution(index2);    
index2=index2-1;
end
solution(index1)=solution(index1)/equations(index1,index1);
index1=index1-1;
end
 
 
 
end
 
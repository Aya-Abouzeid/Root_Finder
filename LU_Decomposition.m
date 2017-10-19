function [upper,L_Matrix,Pivot, solution ] = LU_Decomposition(eqs)
outputFile = 'luDecompositionOUTPUT.txt';
format long
z=size(eqs);
Number=z(1);
Pivot=zeros(Number,Number);
for j = 1:Number
    Pivot(j,j)=1;
end
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
[A, B] = equationsToMatrix(symbolEQS);
i=1;
while(i<=Number)
a(i,:)=A(i,:);
b(i,1)=B(i,:);
i=i+1;
end
L_Matrix=zeros(Number,Number);
d=zeros(Number,1);
solution=zeros(Number,1);
index1=1;
while(index1<Number)
     L_Matrix(index1,index1)=1;
   [a,b,L_Matrix,Pivot]=Partial_Pivoting( a,b,index1,L_Matrix,Pivot);
    index2=index1+1;
    while(index2<=Number)
        L_Matrix(index2,index1)=a(index2,index1)/a(index1,index1);
        a(index2,:)= a(index2,:)-L_Matrix(index2,index1)*a(index1,:);
        index2=index2+1;
    end
    index1=index1+1;
    if(index1 == Number)
       L_Matrix(index1,index1)=1; 
    end
end
index1=1;
while(index1<=Number)
index2=index1-1;
d(index1)=b(index1,1);
while(index2>=1)
d(index1)=d(index1)-L_Matrix(index1,index2)*d(index2);    
index2=index2-1;
end
index1=index1+1;
end
index1=Number;
while(index1>=1)
index2=Number;
solution(index1)=d(index1);
while(index2>index1)
solution(index1)=solution(index1)-a(index1,index2)*solution(index2);    
index2=index2-1;
end
solution(index1)=solution(index1)/a(index1,index1);
index1=index1-1;
end
upper=a(:,:);

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    fileID = fopen(outputFile,'w');

    %printing lower matrix
    fprintf(fileID, '[L] = \n');
    for j = 1 : Number
        for k = 1 : Number
            fprintf(fileID, '%12.5f', L_Matrix(j, k));
        end
        fprintf(fileID, '\n');
    end
    
    fprintf(fileID, '\n\n');
    
    %printing upper matrix
    fprintf(fileID, '[U] = \n');
    for j = 1 : Number
        for k = 1 : Number
            fprintf(fileID, '%12.5f', double(upper(j, k)));
        end
        fprintf(fileID, '\n');
    end

    fprintf(fileID, '\n\n');

    
    %printing pivot matrix
    fprintf(fileID, 'pivot = \n');
    for j = 1 : Number
        for k = 1 : Number
            fprintf(fileID, '%12.5f', Pivot(j, k));
        end
        fprintf(fileID, '\n');
    end
    
    
    fprintf(fileID, '\n\n');

    %printing pivot solution
    fprintf(fileID, 'solution\n');
    for j = 1 : Number
        fprintf(fileID, 'x%d = %12.5f\n', j, solution(j));
    end
        
    fclose(fileID);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end


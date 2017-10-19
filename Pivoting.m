function [ A ,B] = Pivoting( A,B,input )
Max=A(input,input);
Max_index=input;
index=input;
length=size(A);

while(index<=length(1,1))
    if(abs(A(index,input))>abs(Max))
    Max_index=index;
    Max=A(index,input);
    end
    index=index+1;
end
if(Max_index~=input)
    temp2 = B(input);
   B(input,:)=B(Max_index);
    B(Max_index)=temp2;
    temp1=A(input,:);
    A(input,:)=A(Max_index,:);
    A(Max_index,:)=temp1;
end


end


function [ roots , time] = gaussJordon( eqs )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
  outputFile = 'GaussJordanOUTPUT.txt';
  
  tic 
  
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
    [A, roots] = equationsToMatrix(symbolEQS);


            for i = 1:z
            for j = 1:z

                    if i==j
                        for k=1:z
                            if k==i
                                x = A(i,j);
                                for l = 1:z
                                    A(k,l)= A(k,l)/x;  
                                end
                                roots(k) = roots(k)/x;

                            else   m = A(k,j)/A(i,j);

                                for l = 1:z
                                    A(k,l)= A(k,l)-m*A(i,l);
                                end
                                roots(k) =roots(k)-m*roots(i);

                            end
                        end
                    end
           end
            end

            time = toc
            
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    fileID = fopen(outputFile,'w');

    fprintf(fileID, 'Time taken %12.7f seconds \n\n', time);
    
    for j = 1 : Number
        fprintf(fileID, '%2s%d%12.7f\n', 'x', j, double(roots(j)));
    end
 
    fclose(fileID);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 
end
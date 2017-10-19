function [ AllRoots ,time  ] = Gauss( eqs , iter,prec )
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    
    outputFile = 'GaussEliminationOUTPUT.txt';
    
    tic

    precision = str2double(prec);
    iterations = str2num(iter);
    accuracy = 100;

    Z = size(eqs);
    Number = Z (1);

    if(precision ==0)
            requiredAccuracy = double(0.00001);

      else
            requiredAccuracy = double(precision);

    end
    if(iterations ==0)
            maxIterations = 50;

      else
            maxIterations = iterations;

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
    i2 = 1;
    for k = 1:(Number-1)
    [A  B] = Pivoting(A,B,k);
    for i = k+1:Number
        m = A(i  , i2) / A(k, i2);

        A(i ,:) =   A(i ,:) - (A(k ,:) * m);
            B(i) = B(i) - B(k) *m;

    end
    i2 = i2 +1;
    end

    AllRoots = zeros(1,1);

    AllRoots(1,1) = double(B(Number) / A(Number , i2));

    i = Number-1;
        k = 1;
    while ( i>= 1)
        s = i2;
        root = B(i);
        for j = 1:k

        root = root -( AllRoots(j,1) * A(i , s));
        s = s-1;
        end
        root = root / A(i , s);
        new_row= double(root);
       AllRoots=[AllRoots;new_row];
    k = k+1;
    i =i-1;
    end
    AllRoots =  AllRoots(end:-1:1);

    time = toc;

    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    fileID = fopen(outputFile,'w');

    fprintf(fileID, 'Time taken %12.7f seconds \n\n', time);
    
    for j = 1 : Number
        fprintf(fileID, '%2s%d%12.7f\n', 'x', j, AllRoots(j));
    end
 
    fclose(fileID);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end


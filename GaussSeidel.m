function[finalX, eachIterationX, eachIterationError, numberIterations, time] = GaussSeidel (eqs, initialX, maxIterations, percision)

    outputFile = 'GaussSeidelOUTPUT.txt';
    
    tic %start time 
    
    %get number of equations
    z = size(eqs);
    n = z(1);

    %create variables x1, x2, x3...xn
    for i = 1 : n
        x = sprintf('x%d',i);
        assignin('caller',x,sym(x));
    end

    %parse the equations in 2 arrays
    symbolEQS=[];
    for i = 1 : n
    S=sym(eqs{i});
    symbolEQS=[symbolEQS;S];
    end

    %array of coff and equation result c * x = y
    [c, y] = equationsToMatrix(symbolEQS);

    es = str2double(percision); %required percision

    prevX = zeros(n, 1);
    for i = 1 : n
        prevX(i, 1) = str2double(initialX(1, i));
    end

    %for initial state
    currentX = prevX;
    eachIterationX = [];
    eachIterationX = [eachIterationX;rot90(currentX)];
    eachIterationError = [];

    %precesion
    percision = str2double(percision);
    if (percision == 0)
        percision = 0.00001;
    end 
    
    %max iterations
    maxIterations = str2num(maxIterations);
    if (maxIterations == 0)
        maxIterations = 50;
    end
    
    for i = 1 : maxIterations %%%%%%%

        % iteration
        for j = 1 : n
            sum = 0; %sum of product of other variables with their coff
            for k = 1 : n
                if (j ~= k)
                    sum = sum + c(j , k) * currentX(k, 1);
                end
            end
            currentX(j, 1) = (y(j, 1) - sum) / c(j, j);
        end

        eachIterationX = [eachIterationX;rot90(currentX)];
        maxError = 0;

        %get the error
        error = zeros(1, n);
        for j = 1 : n
            error(1, j) = abs(currentX(j, 1) - prevX(j, 1));
            if (maxError < error(1,j))
                maxError = error(1, j);
            end
        end

        eachIterationError = [eachIterationError; error];
        prevX = currentX;  

        %stopping condition maxError < percision
        if (maxError < percision)
            break
        end

    end
    
    time = toc;
    
    finalX = currentX;
    numberIterations = i;

    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    fileID = fopen(outputFile,'w');
    
    fprintf(fileID, 'Time taken %12.7f seconds\n\n', time);

    %print title line
    fprintf(fileID, '%s', 'Iteration');
    for j = 1 : n
        fprintf(fileID, '%11s%d', 'x', j);
    end
    for j = 1 : n
        fprintf(fileID, '%8s%d%s', '|Ea', j, '|');
    end

    fprintf(fileID, '\n');

    %print the table
    for j = 1 : (numberIterations + 1)

        fprintf(fileID, '%9s', num2str(j - 1));

        for k = 1 : n
            fprintf(fileID, '%12.5f', eachIterationX(j, k));
        end

        for k = 1 : n
            if (j ~= 1)
                    fprintf(fileID, '%10.5f', eachIterationError(j - 1, k));
            end
        end

        fprintf(fileID, '\n');    

    end
    
    fclose(fileID);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
end

function[line, Data, equations] = ReadFromFileII (filename)

fileID = fopen(filename);

percision = '0.00001';
max_iteration = '50';

Data = textscan(fileID, '%s','delimiter', '\n');
%scan number of equation
n = str2num(Data{1}{1});

equations = cell(n, 1);
%scan equations
for i = 2:n + 1
    equations{i - 1} = Data{1}{i}; 
end


for i = n+2:length(Data{1})
    line = strsplit(Data{1}{i});
    if strcmpi(line{1}, 'gauss') 
        switch lower(line{2})
            case 'seidel'
                GaussSeidel(equations, line(3 : 5), max_iteration, percision);
            case 'jordan'
                gaussJordon(equations);
            case 'elimination'
                Gauss(equations, max_iteration, percision);
        end
    elseif (strcmpi(line{1},'lu')) 
         LU_Decomposition(equations);
    elseif (strcmpi(line{1},'max'))
        max_iteration = line{3};
    elseif (strcmpi(line{1},'precision')) 
        percision = line{2};
    end
end

fclose(fileID);
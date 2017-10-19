function [ o,a ] = pivott( k,a,o,n )
    p = k; 
    big = abs(a(o(k),k));
    for i = k+1 :n 
        dummy = abs(a(o(i),k));
        if (dummy > big) 
            big = dummy;
            p = i;
        end
    end
    dummy = o(p);
    o(p) = o(k);
    o(k) = dummy;
 
 
end
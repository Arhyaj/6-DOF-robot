function [rt] = RotMatriz(a,b,c)
    rt =[ cos(a)*cos(b)*cos(c) - sin(a)*sin(c), - cos(c)*sin(a) - cos(a)*cos(b)*sin(c), cos(a)*sin(b);
         cos(a)*sin(c) + cos(b)*cos(c)*sin(a),   cos(a)*cos(c) - cos(b)*sin(a)*sin(c), sin(a)*sin(b);
                               -cos(c)*sin(b),                          sin(b)*sin(c),        cos(b)];
 
end
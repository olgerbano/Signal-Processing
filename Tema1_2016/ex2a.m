function [] = ex2a()
    load sunet_a;
    d1 = 1/8000 * length(ya);

    load sunet_i;
    d2 = 1/8000 * length(yi);

    load sunet_s;
    d3 = 1/8000 * length(ys);

    load xilo;
    d4 = 1/44100 * length(yx);

    disp([d1,d2,d3,d4]);
end
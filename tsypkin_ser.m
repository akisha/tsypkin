function J = tsypkin_ser(w)

    function W = tf(p)
        p = 0 + 1i * p;
        m1 = 0.9;
        m2 = 1.1;
        beta = 0.03;
        W = - p ^ 2 / (((p + beta) ^ 2 + m1 ^ 2) * ((p + beta) ^ 2 + m2 ^ 2));
    end
re_loc = 0;
im_loc = 0;
for k = 1 : 200 
    om_k = (2 * k - 1) * w;
    re_im_loc = tf(om_k);
    re_loc = re_loc + real(re_im_loc);
    im_loc = im_loc + (1 / (2 * k -1)) * imag(re_im_loc);
end
J = (4 / pi) * re_loc + 1i * im_loc;
end
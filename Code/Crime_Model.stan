data{
 int B_P;
 int W_P;
 
 int B_C_1;
 int W_C_1;
 
 int B_C_2;
 int W_C_2;
 
 int B_C_3;
 int W_C_3;
}

parameters{
 real B_Alpha1;
 real W_Alpha1;
 
 real B_Alpha2;
 real W_Alpha2;

 real B_Alpha3;
 real W_Alpha3; 
}

model{
 B_Alpha1 ~ normal(-4,4);
 W_Alpha1 ~ normal(-4,4);
 
 B_Alpha2 ~ normal(-4,4);
 W_Alpha2 ~ normal(-4,4);
 
 B_Alpha3 ~ normal(-4,4);
 W_Alpha3 ~ normal(-4,4);
 
 B_C_1 ~ binomial_logit(B_P, B_Alpha1);
 W_C_1 ~ binomial_logit(W_P, W_Alpha1);

 B_C_2 ~ binomial_logit(B_P, B_Alpha2);
 W_C_2 ~ binomial_logit(W_P, W_Alpha2);
 
 B_C_3 ~ binomial_logit(B_P, B_Alpha3);
 W_C_3 ~ binomial_logit(W_P, W_Alpha3);
}

generated quantities{
 real D1;
 real D2;
 real D3;
 real R_Rep;
 real R_Arr;

 D1 = log(inv_logit(B_Alpha1)/inv_logit(W_Alpha1));
 D2 = log(inv_logit(B_Alpha2)/inv_logit(W_Alpha2));
 D3 = log(inv_logit(B_Alpha3)/inv_logit(W_Alpha3));
 
 R_Rep = D2-D1;
 R_Arr = D3-D1;

}


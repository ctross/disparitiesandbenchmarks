data{
 int B_S;
 int W_S;

 int B_P;
 int W_P;
 
 int B_C;
 int W_C;
}

parameters{
 real B_Alpha;
 real W_Alpha;
 
 real B_Theta;
 real W_Theta;

 real B_Theta_star;
 real W_Theta_star; 
}

model{
 B_Alpha ~ normal(-4,4);
 W_Alpha ~ normal(-4,4);
 
 B_Theta ~ normal(-4,4);
 W_Theta ~ normal(-4,4);
 
 B_Theta_star ~ normal(-4,4);
 W_Theta_star ~ normal(-4,4);
 
 B_C ~ binomial_logit(B_P, B_Alpha);
 W_C ~ binomial_logit(W_P, W_Alpha);

 B_S ~ binomial_logit(B_P, B_Theta);
 W_S ~ binomial_logit(W_P, W_Theta);
 
 B_S ~ binomial_logit(B_P - B_C, B_Theta_star);
 W_S ~ binomial_logit(W_P - W_C, W_Theta_star);
}

generated quantities{
 real R_P;
 real R_NC;
 real R_PA;
 
 R_P = log(inv_logit(B_Theta)/inv_logit(W_Theta));
 R_NC = log(inv_logit(B_Theta_star)/inv_logit(W_Theta_star));
 R_PA = log((inv_logit(B_Theta)/inv_logit(W_Theta))*((1-inv_logit(W_Alpha))/(1-inv_logit(B_Alpha)))); 
}


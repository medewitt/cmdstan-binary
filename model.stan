data {
    int<lower=1> N;
    array[N] int y;
    array[N] int K;
}
parameters {
   real theta;
}
model{
    theta ~ beta(1,2);
    y ~ binomial(y, K);
}
generated quantities {
   vector[N] llk;

   llk[N] = binomial_lpmf(y | K, theta);

}

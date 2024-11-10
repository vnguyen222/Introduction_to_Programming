/****************************************************************************/
// Easter Lab
// Vincent Nguyen

// Variable Initializaition
int y = 2020;
int a, b, c, d, e, f, g, h, i, k, r, m , n ,p;


// Algorithm
a = y%19;

b=y/100;
c=y%100;

d=b/4;
e=b%4;

f=(b+8)/25;

g=(b-f+1)/3;

h=(19*a+b-d-g+15)%30;

i=c/4;
k=c%4;

r=(32+2*e+2*i-h-k)%7;

m=(a+11*h+22*r)/451;

n=(h+r-7*m+114)/31;
p=(h+r-7*m+114)%31;


// Printing all the values stored in the variables
println("a = " + a);
println("b = " + b);
println("c = " + c);
println("d = " + d);
println("e = " + e);
println("f = " + f);
println("g = " + g);
println("h = " + h);
println("i = " + i);
println("k = " + k);
println("r = " + r);
println("m = " + m);
println("n = " + n);
println("p = " + p);

// Print final output. Month/Day
print("\n\nEaster in " + y + " falls on " + n + "/" + (p+1));

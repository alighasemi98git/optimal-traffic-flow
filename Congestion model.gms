sets
I nodos /0*13/;
alias (i,j,o,d);

Scalar epsilon /1e-6/;
table
   arcs(i,j) si existe arcos entre nodos
       0   1   2   3   4   5   6   7   8   9  10  11  12  13
   0   0   0   0   0   0   1   1   1   0   0   0   0   0   0
   1   0   0   1   0   1   0   0   0   0   0   0   0   0   0
   2   0   1   0   1   0   0   0   0   0   0   0   0   0   0
   3   0   0   1   0   1   0   0   0   0   0   0   0   0   0
   4   0   1   0   1   0   1   0   0   0   0   0   0   0   0
   5   1   0   0   0   1   0   0   0   1   0   0   0   0   0
   6   1   0   0   0   0   0   0   0   0   0   0   0   0   0
   7   1   0   0   0   0   0   0   0   1   0   0   1   0   1
   8   0   0   0   0   0   1   0   1   0   1   1   1   0   0
   9   0   0   0   0   0   0   0   0   1   0   0   0   0   0
  10   0   0   0   0   0   0   0   0   1   0   0   1   0   0
  11   0   0   0   0   0   0   0   1   1   0   1   0   1   1
  12   0   0   0   0   0   0   0   0   0   0   0   1   0   1
  13   0   0   0   0   0   0   0   1   0   0   0   1   1   0
;

table people(i,j) "Number of people moving from node i to j (no self-loops)"
         0      1      2      3      4      5      6      7      8      9      10     11     12     13
0        0      0      0      0      0      0      0      0      0      0      0       0      0      0
1    26000      0   2000   1000   2000    900      0   1000    700   1000      0    1111      0      0
2    26500   2000      0      0   2000    800      0   1000    600   1000      0    1111      0      0
3    27500   3000   2000      0   2000    600      0   2000    600   1000      0    1111      0      0
4    28000   2000   2000    900      0   1000    800   2000    700   1000      0    1111    500      0
5    27000   2000   2000    600   2000      0      0   2000    600   1000    800    1111      0      0
6    23500   2000   2000    800   2000    900      0   2000      0   1000    600    1111      0      0
7    30000   3000   2000   1000   3000    700      0      0    600   2000    800    1111      0      0
8    26500   2000   2000    700   2000    800    600   2000      0   1000    800    1111      0      0
9     9000   2000   1000      0   2000    600      0   1000      0      0    600    1111      0      0
10    7000   1000   1000      0   1000      0      0   1000      0   1000      0    1111      0      0
11   27000   2000   2000    900   2000    700    600   2000    800   1000    700       0      0      0
12    7000   1000   1000      0   1000    500      0   1000      0   1000      0    1111      0      0
13    9000   1000   1000      0   1000    600      0   1000      0   1000    600    1111      0      0;
people(i,j) = people(i,j)/100;
table
    time(i,j)  travel time
         0      1      2      3      4      5      6      7      8      9     10     11     12     13
    0    0      0      0      0      0      13     13     10     0      0     0      0      0      0
    1    0      0      14     0      30     0      0      0      0      0     0      0      0      0
    2    0      14     0      21     0      0      0      0      0      0     0      0      0      0
    3    0      0      21     0      15     0      0      0      0      0     0      0      0      0
    4    0      30     0      15     0      21     0      0      0      0     0      0      0      0
    5    13     0      0      0      21     0      0      0      22     0     0      0      0      0
    6    13     0      0      0      0      0      0      0      0      0     0      0      0      0
    7    10     0      0      0      0      0      0      0      6      0     0      20     0      16
    8    0      0      0      0      0      22     0      6      0      20    13     13     0      0
    9    0      0      0      0      0      0      0      0      20     0     0      0      0      0
   10    0      0      0      0      0      0      0      0      13     0     0      27     0      0
   11    0      0      0      0      0      0      0      20     13     0     27     0      19     12
   12    0      0      0      0      0      0      0      0      0      0     0      19     0      21
   13    0      0      0      0      0      0      0      16     0      0     0      12     21     0
;

Table u(i,j) 'Capacities'
    0    1     2     3     4     5    6     7     8     9    10    11    12    13
0   0    0     0     0     0     1800 1800  1800  0     0     0     0     0     0
1   0    0     1800  0     1800  0    0     0     0     0     0     0     0     0
2   0    1800  0     1800  0     0    0     0     0     0     0     0     0     0
3   0    0     1800  0     3600  0    0     0     0     0     0     0     0     0
4   0    1800  0     3600  0     1800 0     0     0     0     0     0     0     0
5   1800 0     0     0     1800  0    0     0     1800  0     0     0     0     0
6   1800 0     0     0     0     0    0     0     0     0     0     0     0     0
7   1800 0     0     0     0     0    0     0     1800  0     0     1800  0     1800
8   0    0     0     0     0     1800 0     1800  0     3600  1800  1800  0     0
9   0    0     0     0     0     0    0     0     3600  0     0     0     0     0
10  0    0     0     0     0     0    0     0     1800  0     0     1800  0     0
11  0    0     0     0     0     0    0     1800  1800  0     1800  0     3600  1800
12  0    0     0     0     0     0    0     0     0     0     0     3600  0     1800
13  0    0     0     0     0     0    0     1800  0     0     0     1800  1800  0
;

*u(i,j) = u(i,j) * 10;

Parameter a(i,j);
a(i,j) = 0.25 * time(i,j);

positive variable
x(o,d,i,j) number of people from o movig to d in arc ij
f(i,j) total flow in arc ij;

Variable
obj minimize travel time;

f.up(i,j)=u(i,j);
x.up(o,d,i,j)=people(o,d)*arcs(i,j);
Equations
objective

total_flow(i,j)


flow1(o,d,i)
flow2(o,d,i)
flow3(o,d,i)

;

*objective..obj=E=sum((o,d,i,j),(time(i,j) + (a(i,j)*x(o,d,i,j))/(u(i,j) - x(o,d,i,j) + epsilon))*x(o,d,i,j));
*objective..obj=E=sum((i,j)$(arcs(i,j)<>0),(time(i,j) + ((a(i,j)*f(i,j))/(u(i,j) - f(i,j)) + epsilon))*f(i,j));
*arcs_existance(o,d,i,j)..x(o,d,i,j)=L=arcs(i,j)*u(i,j);
*total_flow(i,j)$(arcs(i,j)<>0)..f(i,j)=E=sum((o,d)$(people(o,d)>0),x(o,d,i,j));
*arcs_existance(i,j)$(arcs(i,j)<>0)..f(i,j)=L=u(i,j);

objective..obj=E=sum((i,j)$(arcs(i,j)<>0),(time(i,j) + ((a(i,j)*60*f(i,j))/(u(i,j) - f(i,j) + epsilon))*f(i,j)));
total_flow(i,j)$(arcs(i,j)<>0)..f(i,j)=E=sum((o,d)$(people(o,d)>0),x(o,d,i,j));
*flow1(o,d,i)$(ord(i)=ord(o))..sum(j,x(o,d,i,j))-sum(j,x(o,d,j,i))=E=people(o,d);
*flow2(o,d,i)$(ord(i)=ord(d))..sum(j,x(o,d,i,j))-sum(j,x(o,d,j,i))=E=-people(o,d);
*flow3(o,d,i)$((ord(i)<>ord(o))and(ord(i)<>ord(d)))..sum(j,x(o,d,i,j))-sum(j,x(o,d,j,i))=E=0;

flow1(o,d,i)$((ord(i)=ord(o))and(people(o,d)>0))..sum(j$(arcs(i,j)<>0),x(o,d,i,j))-sum(j$(arcs(i,j)<>0),x(o,d,j,i))=E=people(o,d);
flow2(o,d,i)$((ord(i)=ord(d))and(people(o,d)>0))..sum(j$(arcs(i,j)<>0),x(o,d,i,j))-sum(j$(arcs(i,j)<>0),x(o,d,j,i))=E=-people(o,d);
flow3(o,d,i)$(((ord(i)<>ord(o))and(ord(i)<>ord(d)))and(people(o,d)>0))..sum(j$(arcs(i,j)<>0),x(o,d,i,j))-sum(j$(arcs(i,j)<>0),x(o,d,j,i))=E=0;



*options optcr=0;
option nlp=SNOPT;
model transport /all/;

solve transport using nlP minimizing obj;

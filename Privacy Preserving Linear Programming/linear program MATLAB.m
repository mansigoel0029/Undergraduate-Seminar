%Solving the original LP
f = [10 12]
A = [-40 -30; -20 -20;-10 -30]
b = [-150 -90 -60]
Aeq = []
beq = []
lb = [0 0]
ub = []
[X,Z] = linprog(f,A,b,Aeq,beq,lb,ub)

%Formulating transformed LP
B_1 = randperm(6,4)
B_2 = randperm(6,4)

B = [B_1.' B_2.']
B_trans = B.'

cB = f*B_trans

A_pos  = [40 30; 20 20;10 30]
AB = A_pos*B_trans

%Solving transformed LP
f1 = [80 34 88 42]
A1 = [-230 -100 -280 -150; -140 -60 -160 -80; -170 -70 -160 -60]
b1 = [-150 -90 -60]
Aeq1 = []
beq1 = []
lb1 = [0 0 0 0]
ub1 = []
[X1,Z1] = linprog(f1,A1,b1,Aeq1,beq1,lb1,ub1)




%LP with same B vector as presentation
%Formulating transformed LP
BB_1 = [1 0 -1 3]
BB_2 = [2 6 -3 4]

BB = [BB_1.' BB_2.']
BB_trans = BB.'

cBB = f*BB_trans

AA_pos  = [40 30; 20 20;10 30]
ABB = AA_pos*BB_trans

%Solving transformed LP
f2 = [34 72 -46 78]
A2 = [-100 -180 -130 -240; -60 -120 80 -140; -70 -180 100 -150]
b2 = [-150 -90 -60]
Aeq2 = []
beq2 = []
lb2 = [0 0 0 0]
ub2 = []
[X2,Z2] = linprog(f2,A2,b2,Aeq2,beq2,lb2,ub2)


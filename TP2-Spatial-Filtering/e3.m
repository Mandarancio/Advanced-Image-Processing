close all;
clear all;

x = randn([2,100]);

plot(x(1,:));
xlim([0,99]);
legend('x_1');
xlabel('events');
ylabel('value');
figure()
plot(x(2,:));
xlim([0,99]);
legend('x_2');
xlabel('events');
ylabel('value');

mux1 = mean(x(1,:));
mux2 = mean(x(2,:));
var1 = var(x(1,:));
var2 = var(x(2,:));

disp('mean x1');
disp(mux1);
disp('mean x2');
disp(mux2);

disp('var x1');
disp(var1);
disp('var x2');
disp(var2);

cov12 = cov(x(1,:),x(2,:));

cy = [var1, cov12;
      cov12, var2];
figure();
plotcov([mux1; mux2],cy);
axis equal

A = [sqrt(2) 0;
     0 1/sqrt(3)];
     
g = A*x;

mux1 = mean(g(1,:));
mux2 = mean(g(2,:));
var1 = var(g(1,:));
var2 = var(g(2,:));

disp('mean g1');
disp(mux1);
disp('mean g2');
disp(mux2);

disp('var g1');
disp(var1);
disp('var g2');
disp(var2);

cov12 = cov(g(1,:),g(2,:));

cy = [var1, cov12;
      cov12, var2];
figure()
plot(g(1,:));
xlabel('events');
ylabel('value');
hold on;
plot(g(2,:));
xlim([0,99]);
legend('g_1','g_2');     
figure()
plotcov([mux1; mux2],cy);
[v,d]=eigs(cy);
disp(v)
disp(d)
axis equal

A = [cos(pi/6) -sin(pi/6);
     sin(pi/6)  cos(pi/6);];
e = A*x;

mux1 = mean(e(1,:));
mux2 = mean(e(2,:));
var1 = var(e(1,:));
var2 = var(e(2,:));

disp('mean e1');
disp(mux1);
disp('mean e2');
disp(mux2);

disp('var e1');
disp(var1);
disp('var e2');
disp(var2);

cov12 = cov(e(1,:),e(2,:));

cy = [var1, cov12;
      cov12, var2];
figure()
plot(e(1,:));
xlabel('events');
ylabel('value');
hold on;
plot(e(2,:));
xlim([0,99]);
legend('E_1','E_2');     
figure()
plotcov([mux1; mux2],cy);
axis equal
[v,d]=eigs(cy);
disp(v)
disp(d)

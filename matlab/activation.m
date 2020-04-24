
x = -4:0.01:4;

close all;
figure;
set(gca,'FontSize', 12);
xlim([-4 4]);
ylim([-1 1]);
hold on;
plot(x, f_sigmoid(x),'LineWidth',2);
plot(x, f_relu(x),'LineWidth',2);
plot(x, f_elu(x), '--','LineWidth',2);
legend("Sigmoid", "ReLU", "ELU", "Location", "southeast");

function [y] = f_sigmoid(x)
    y = 1 ./ (1+exp(-x));
end

function [y] = f_relu(x)
    y = max(0,x);
end

function [y] = f_elu(x)
    y = max(0,x) + min(0, 1.0*(exp(x)-1));
end

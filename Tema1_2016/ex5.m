function [] = ex5(mu,sigma,nr)
    y = sigma*randn(nr,1)+mu;   
    y
    histogram(y,'Normalization','pdf')
    %x = -15:0.1:15;
    %x = y;
    x = min(y):0.1:max(y);
    f = (1/(sqrt(2*pi)*sigma))*exp(-0.5*(sigma^2)*(x-mu).^2);
    hold on;
    plot(x,f,'LineWidth',1.5)
    hold off
    figure(2)
    plot(x,f,'LineWidth',1.5)
end
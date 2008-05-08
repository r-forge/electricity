clear;
clc;
load capacities;

barh(capacities, 'stacked', 'DisplayName', 'capacities', 'YDataSource', 'capacities'); figure(gcf)
xlabel('Installed capacities in MWh','FontS',14,'Interp','latex');
ylabel('Companies','FontS',14,'Interp','latex');

h = legend('Hydro','Nuclear','Soft coal','Hard coal','Gas','Oil','Pump') 
set(h,'Interpreter','latex')

set(gca,'XTickLabel',{'0','500','1000','1500','2000','2500','3000','3500','4000'})
set(gca,'YTickLabel',{'Fringe','RWE','E.ON','Vattenfall','EnBW'})
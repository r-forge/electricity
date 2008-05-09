clear;
clc;
load capacities;

%% Plot initial capacities
barh(capacities, 'stacked', 'DisplayName', 'capacities', 'YDataSource', 'capacities'); figure(gcf)
xlabel('Installed capacities in MWh','FontS',14,'Interp','latex');
ylabel('Companies','FontS',14,'Interp','latex');

h = legend('Hydro','Nuclear','Soft coal','Hard coal','Gas','Oil','Pump') 
set(h,'Interpreter','latex')

set(gca,'XTickLabel',{'0','500','1000','1500','2000','2500','3000','3500','4000'})
set(gca,'YTickLabel',{'Fringe','RWE','E.ON','Vattenfall','EnBW'})

%% Plot load values

plot(totload/1000);
xlabel('Month','FontS',14,'Interp','latex');
ylabel('Load in GWh','FontS',14,'Interp','latex');
set(gca,'YLim',[35 95]);
month = [31 28 31 30 31 30 31 31 30 31 30 31];
xticks = (cumsum(month)-31)*24;
set(gca,'XTick',xticks)
set(gca,'XLim',[0 8760]);
set(gca,'XTickLabel',{'Jan','Feb','Mar', 'Apr','May','Jun','Jul','Aug','Sep','Oct','Nov', 'Dec'})

%% Plot price-quant relationship

subplot(1,2,1)
scatter(pvf(:,1)/1000,pvf(:,2),'filled','SizeData',12);
xlabel('Spot market trading volumes $< 15$ (in GWh)','FontS',14,'Interp','latex');
ylabel('Spot market prices $<100$ at EEX','FontS',14,'Interp','latex');

subplot(1,2,2)
scatter(pv2f(:,1)/1000,pv2f(:,2),'filled','SizeData',12);
xlabel('Hourly load values (in GWh)','FontS',14,'Interp','latex');
ylabel('Spot market prices $<100$ at EEX','FontS',14,'Interp','latex');
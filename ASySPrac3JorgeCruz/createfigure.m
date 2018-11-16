function createfigure(X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  stem x
%  Y1:  stem y

%  Auto-generated by MATLAB on 10-Nov-2018 20:54:34

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create stem
stem(X1,Y1,'LineWidth',2,'Color',[1 0 1]);

% Create title
title('Grafica de n*0.9^nu[n]');

%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 3.5]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0 2.687]);
box(axes1,'on');
grid(axes1,'on');

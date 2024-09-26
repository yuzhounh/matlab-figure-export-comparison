clear, clc, close all;

% Add path
addpath(genpath('fig2svg-master\'));
addpath(genpath('export_fig-master\'));

% Create figure
figure;
plot(1:10, rand(1, 10));
xlabel('X label');
ylabel('Y label');
title_text = 'Title';
title(title_text, 'FontSize', 13);

% Scale
pos=get(gcf,'Position');
scale=0.7;
set(gcf,'Position',[pos(1),pos(2),pos(3)*scale,pos(4)*scale]);

% Export figures
folder_name = 'figures';
figure_name = 'figure_1';  
resolution = 300; 
export_graphics(folder_name, figure_name, resolution);
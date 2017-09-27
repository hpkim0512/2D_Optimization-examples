% By Hwa Pyung Kim @ CSE Yonsei
% hpkim0512@yonsei.ac.kr
% http://
clear; close all
addpath('./optimize_methods','./test_functions')
%% Choose a test function, J(x,y), for optimization
% See detail: https://en.wikipedia.org/wiki/Test_functions_for_optimization
function_list={'Rosenbrock_function', 'Beales_function', 'GoldsteinPrice_function', 'Booths_function', 'Matyas_function',  ...
               'Three_hump_camel_function', 'Styblinski_Tang_function'};
run(function_list{7})
x = linspace(xmin,xmax,200);
y = linspace(ymin,ymax,200);
[X,Y]=meshgrid(x,y);
Z=J(X,Y);
% Initial value (x0,y0) was adequately chosen for each test functions by author's experience.
% If you want to randomly choose the initial value, please uncomment the folloing line:
% x0=rand*(xmax-xmin)+xmin; y0=rand*(ymax-ymin)+ymin;
% x0=0; y0=0;
%% Options
max_steps = 1000; % number of iteration to optimize
plot_type='contour'; % 'contour' or 'surface'
opt_list={'Gradient_descent', 'Momentum', 'Adagrad', 'RMSProp', 'Adam'};
optimizer=opt_list{5};
%% Set the hyperparameters
% Default values were taken from "http://ruder.io/optimizing-gradient-descent"
learning_rate = 0.001; % 'Adagrad' always take learning_rate as 0.01
build_model
% If you want to change the hyperparameters(beta1, beta2, gamma, eps), please write in here
% e.g) gamma = 0.8
%% Optimize
do_optimization
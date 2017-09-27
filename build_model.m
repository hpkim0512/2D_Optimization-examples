if strcmp(optimizer,'Momentum')% || strcmp(optimizer,'NAG')
    gamma = 0.9;
elseif strcmp(optimizer, 'Adagrad')
    learning_rate = 0.01;
    eps = 1e-8;
elseif strcmp(optimizer,'RMSProp')% || strcmp(optimizer,'Adadelta')
    gamma = 0.9;
    eps = 1e-8;
elseif strcmp(optimizer,'Adam')
    beta1 = 0.9; Beta1 = 1;
    beta2 = 0.999; Beta2 = 1;
    eps = 1e-8;
end
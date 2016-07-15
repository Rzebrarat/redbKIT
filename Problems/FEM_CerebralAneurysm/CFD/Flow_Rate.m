function [Q_in] = Flow_Rate( t )

Values = [0    1.8 ; ...
      0.03 1.795; ...
      0.12 4.0; ...
      0.16*1 5.2; ...
      0.29*1 2.8; ...
      0.38*1 3.2; ...
      0.43 1.5; ...
      0.48 1.8; ...
      0.51 2.5; ...
      0.55 2.8; ...
      0.57 3.0; ...
      0.66 2.5; ...
      0.8  2.2; ...
      1    1.8]; % exact is 0.667

t_mes       = Values(:,1);
%Q_mes       = 16.67 * Values(:,2) * 0.1; % L/min to cm3 / sec the rescale by 0.1 !! ATTENTION !!!

RBF_data = RBF_setup(t_mes', Values(:,2)', 'thinplate');

t = mod(t, 1.0);

[Q_in] = 2 * 2.5 * RBF_evaluate(t, RBF_data);


end
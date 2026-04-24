function Z = wave_dir(X, Y, freq, dir)

% Be X and Y two meshgrid matrices, and Z its correspondent value.
%
% dir is an angle to which the wave is directed.
%
% freq is the wave s frequency

h = cosd(dir); k = sind(dir);

Z = cos( freq.*(h.*X + k.*Y) );

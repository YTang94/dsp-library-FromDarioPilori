%GENERATE_64QAM_CONSTELLATION_SVG Generate and save 64-QAM constellation SVG.
% Uses the repository's 64-QAM constellation points from text_constellations.

constellation_path = fullfile(fileparts(mfilename('fullpath')), '..', 'text_constellations', '64qam.txt');
points = load(constellation_path);

figure('Color', 'w');
scatter(points(:,1), points(:,2), 36, 'filled');
axis equal;
grid on;
xlabel('In-phase');
ylabel('Quadrature');
title('64-QAM Constellation');

output_path = fullfile(fileparts(mfilename('fullpath')), '64qam_constellation.svg');
print(output_path, '-dsvg');

close(gcf);

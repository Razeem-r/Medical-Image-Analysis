E = imread('tranformed 1.jpg');
I = imread('blank.jpg');
% override some default parameters
params.minMajorAxis = 300;
params.maxMajorAxis = 500;
params.minAspectRatio = 0.6


% note that the edge (or gradient) image is used
bestFits = ellipseDetection(E, params);

fprintf('Output %d best fits.\n', size(bestFits,1));

figure;
image(E);
set(gca,'visible','off')

%ellipse drawing implementation: http://www.mathworks.com/matlabcentral/fileexchange/289 
ellipse(bestFits(:,3),bestFits(:,4),bestFits(:,5)*pi/180,bestFits(:,1),bestFits(:,2),'w');

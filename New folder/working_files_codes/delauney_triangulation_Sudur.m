rng default; % Set the random number generator to its default state
numPoints = 200; % Number of points
% Generate random X and Y coordinates within the interval [0, 10000]
X = randi([0, 10000], [numPoints, 1]);
Y = randi([0, 10000], [numPoints, 1]);

% Combine X and Y coordinates to create a matrix of 2D points
P = [X, Y];

% Manually assign point numbers
pointNumbers = (1:numPoints)';

% Display the generated points and point numbers
disp('Point List (Point Number, X-Coordinate, Y-Coordinate):');
disp([pointNumbers, P]);

% Create Delaunay triangulation
DT = delaunayTriangulation(P);

% Manually assign triangle numbers
triangleNumbers = (1:size(DT.ConnectivityList, 1))';
% Display the triangulation information with triangle numbers
triangulationHeader = sprintf('Triangulation (Triangle Number, Point Numbers):');
disp(triangulationHeader);
disp([triangleNumbers, DT.ConnectivityList]);
% Plot the points and Delaunay triangulation
figure;
triplot(DT);
hold on;
scatter(X, Y, 'filled', 'r');
title('Generated 2D Points and Delaunay Triangulation');
xlabel('X Coordinate');
ylabel('Y Coordinate');
legend('Delaunay Triangulation', 'Generated Points', 'Location', 'Best');
hold off;








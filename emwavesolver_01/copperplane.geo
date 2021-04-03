// Generates a copper plane into a chamber of air and no other reflections
length = 0.4;

xmin = 0;
xmax = length+length/2;
ymin = 0;
ymax = 0.6;
thickness = 2e-3;
masseplatte = 1e-3;
absorber = 2e-2;

Point(1) = {xmin, ymin, 0, absorber};
Point(2) = {xmax, ymin, 0, absorber};
Point(3) = {xmax, (ymax/2-thickness/2), 0, masseplatte};
Point(4) = {xmax-length, (ymax/2-thickness/2), 0, masseplatte};
Point(5) = {xmax-length, (ymax/2+thickness/2), 0, masseplatte};
Point(6) = {xmax, (ymax/2+thickness/2), 0, masseplatte};
Point(7) = {xmax, ymax, 0, absorber};
Point(8) = {xmin, ymax, 0, absorber};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 1};
Line(9) = {3, 6};

Curve Loop(1) = {1, 2, 9, 6, 7, 8};
Curve Loop(2) = {3, 4, 5, -9};

Plane Surface(1) = {1, 2};

Mesh 2;

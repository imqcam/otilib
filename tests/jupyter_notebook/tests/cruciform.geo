he = 0.2;



Point(1) = {0.000000, 0.000000, 0.000000, 0.050000*he};
Point(2) = {1.000000, 0.000000, 0.000000, 2.000000*he};
Point(3) = {1.000000, 1.000000, 0.000000, 2.000000*he};
Point(4) = {0.000000, 1.000000, 0.000000, 2.000000*he};
Point(5) = {0.000000, 2.000000, 0.000000, 2.000000*he};
Point(6) = {-1.000000, 2.000000, 0.000000, 2.000000*he};
Point(7) = {-1.000000, 1.000000, 0.000000, 2.000000*he};
Point(8) = {-2.000000, 1.000000, 0.000000, 2.000000*he};
Point(9) = {-2.000000, 0.000000, 0.000000, 2.000000*he};
Point(10) = {-1.000000, 0.000000, 0.000000, 2.000000*he};
Point(11) = {-1.000000, -1.000000, 0.000000, 2.000000*he};
Point(12) = {0.000000, -1.000000, 0.000000, 2.000000*he};

//Point(13) = {-0.000007, 0.000007, 0.000000, 0.050000*he};
Point(14) = {-0.015721, 0.015706, 0.000000,  0.050000*he};
Point(15) = {-0.031434, 0.031420, 0.000000,  0.050000*he};
Point(16) = {-0.047148, 0.047133, 0.000000,  0.050000*he};
Point(17) = {-0.062861, 0.062847, 0.000000,  0.050000*he};
Point(18) = {-0.078574, 0.078560, 0.000000,  0.050000*he};
Point(19) = {-0.094288, 0.094274, 0.000000,  0.050000*he};
Point(20) = {-0.110001, 0.109987, 0.000000,  0.050000*he};
Point(21) = {-0.125715, 0.125701, 0.000000,  0.050000*he};
Point(22) = {-0.141421, 0.141421, 0.000000,  0.008000*he};
Point(23) = {-0.241421, 0.141421, 0.000000,  0.008000*he};
Point(24) = {-0.141421, -0.141421, 0.000000,  0.008000*he};
//Point(23) = {-0.125708, 0.125708, 0.000000, 1.000000*he};
//Point(24) = {-0.109994, 0.109994, 0.000000, 1.000000*he};
//Point(25) = {-0.094281, 0.094281, 0.000000, 1.000000*he};
//Point(26) = {-0.078567, 0.078567, 0.000000, 1.000000*he};
//Point(27) = {-0.062854, 0.062854, 0.000000, 1.000000*he};
//Point(28) = {-0.047140, 0.047140, 0.000000, 1.000000*he};
//Point(29) = {-0.031427, 0.031427, 0.000000, 1.000000*he};
//Point(30) = {-0.015713, 0.015713, 0.000000, 1.000000*he};
//Point(31) = {0.000000, 0.000000, 0.000000, 1.000000*he};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 9};
Line(9) = {9, 10};
Line(10) = {10, 11};
Line(11) = {11, 12};
Line(12) = {12, 1};
//+
//Point(13) = {-0.2, 0.2, 0, 2.000000*he};
//+
//Line(13) = {1, 13};
BSpline(41) = {1, 14, 15, 16, 17, 18, 19, 20, 21, 22,23,24};
//BSpline(42) = {22, 23, 24, 25, 26, 27, 28, 29, 30, 31};
Line Loop(1) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
Plane Surface(1) = {1};

Line{41} In Surface{1};
// INITIAL MESH
//                         P
//                          ^ ^ ^ ^ ^ ^ ^
//                          | | | | | | | (pg 30)
//                          | | | | | | |
//                         6--------------5
//                         |			  |
//                         |			  |
//                         |	          |
//  (pg 40)                |              |
//               8_________|	          |________3
//            \|O|         7             4        |O|\
//            \|O|                                |O|\ (pg 20)
//            \|O|                     \ ^y       |O|\
//            \|O|                      \|   x    |O|\
//            \|O|_________10            \--->----|O|\
//               9         |             |1       2
//                         |             |
//                         |             |
//                         ^ y           |
//                         |   x         |
//                        11--->---------12
//                         OOOOOOOOOOOOOOO  (pg 10)
//                         ---------------
//                         / / / / / / / /
//+        Crack Mouth
//
Physical Point("Crack",       6) = {13};
Physical Point("Crack_start", 1) = {1};
//+
//+
Physical Line("bottom",10) = {11};
Physical Line("right", 20) = {2};
Physical Line("top",   30) = {5};
Physical Line("left",  40) = {8};
Physical Line("crack_path",100) = {41};

//+
Physical Surface(5) = {1};
Mesh.ElementOrder = 2;
Mesh.SecondOrderIncomplete = 1;
Mesh.SecondOrderLinear     = 1;
Mesh.RecombineAll=0; // 1: Quads
                     // 0: Triangles

Mesh 2;

Plugin(Crack).Dimension=1;                // Dimension of the crack 1: line, 2: surface.
Plugin(Crack).PhysicalGroup=100;          // Physical group that defines the crack itself.
Plugin(Crack).OpenBoundaryPhysicalGroup=1; // If desired, select an edge to be unconnected. Leave 0 for internal cracks. It must be of dimension-1
Plugin(Crack).NormalX=0;
Plugin(Crack).NormalY=0;
Plugin(Crack).NormalZ=1;
Plugin(Crack).Run;

// save mesh
Save "cruciform.msh";

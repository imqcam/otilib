#ifndef OTI_MDNUM10_SCALAR_STRUCTURES_H
#define OTI_MDNUM10_SCALAR_STRUCTURES_H

// ----------------------------------------------------------------------------------------------------
// --------------------------------------      STRUCTURES        --------------------------------------
// ----------------------------------------------------------------------------------------------------

// Scalar
typedef struct {
  // Real
  coeff_t r;
  // Order 1
  coeff_t e1;
  coeff_t e2;
  coeff_t e3;
  coeff_t e4;
  coeff_t e5;
  coeff_t e6;
  coeff_t e7;
  coeff_t e8;
  coeff_t e9;
  coeff_t eA;
  // Order 2
  coeff_t e12;
  coeff_t e13;
  coeff_t e23;
  coeff_t e14;
  coeff_t e24;
  coeff_t e34;
  coeff_t e15;
  coeff_t e25;
  coeff_t e35;
  coeff_t e45;
  coeff_t e16;
  coeff_t e26;
  coeff_t e36;
  coeff_t e46;
  coeff_t e56;
  coeff_t e17;
  coeff_t e27;
  coeff_t e37;
  coeff_t e47;
  coeff_t e57;
  coeff_t e67;
  coeff_t e18;
  coeff_t e28;
  coeff_t e38;
  coeff_t e48;
  coeff_t e58;
  coeff_t e68;
  coeff_t e78;
  coeff_t e19;
  coeff_t e29;
  coeff_t e39;
  coeff_t e49;
  coeff_t e59;
  coeff_t e69;
  coeff_t e79;
  coeff_t e89;
  coeff_t e1A;
  coeff_t e2A;
  coeff_t e3A;
  coeff_t e4A;
  coeff_t e5A;
  coeff_t e6A;
  coeff_t e7A;
  coeff_t e8A;
  coeff_t e9A;
  // Order 3
  coeff_t e123;
  coeff_t e124;
  coeff_t e134;
  coeff_t e234;
  coeff_t e125;
  coeff_t e135;
  coeff_t e235;
  coeff_t e145;
  coeff_t e245;
  coeff_t e345;
  coeff_t e126;
  coeff_t e136;
  coeff_t e236;
  coeff_t e146;
  coeff_t e246;
  coeff_t e346;
  coeff_t e156;
  coeff_t e256;
  coeff_t e356;
  coeff_t e456;
  coeff_t e127;
  coeff_t e137;
  coeff_t e237;
  coeff_t e147;
  coeff_t e247;
  coeff_t e347;
  coeff_t e157;
  coeff_t e257;
  coeff_t e357;
  coeff_t e457;
  coeff_t e167;
  coeff_t e267;
  coeff_t e367;
  coeff_t e467;
  coeff_t e567;
  coeff_t e128;
  coeff_t e138;
  coeff_t e238;
  coeff_t e148;
  coeff_t e248;
  coeff_t e348;
  coeff_t e158;
  coeff_t e258;
  coeff_t e358;
  coeff_t e458;
  coeff_t e168;
  coeff_t e268;
  coeff_t e368;
  coeff_t e468;
  coeff_t e568;
  coeff_t e178;
  coeff_t e278;
  coeff_t e378;
  coeff_t e478;
  coeff_t e578;
  coeff_t e678;
  coeff_t e129;
  coeff_t e139;
  coeff_t e239;
  coeff_t e149;
  coeff_t e249;
  coeff_t e349;
  coeff_t e159;
  coeff_t e259;
  coeff_t e359;
  coeff_t e459;
  coeff_t e169;
  coeff_t e269;
  coeff_t e369;
  coeff_t e469;
  coeff_t e569;
  coeff_t e179;
  coeff_t e279;
  coeff_t e379;
  coeff_t e479;
  coeff_t e579;
  coeff_t e679;
  coeff_t e189;
  coeff_t e289;
  coeff_t e389;
  coeff_t e489;
  coeff_t e589;
  coeff_t e689;
  coeff_t e789;
  coeff_t e12A;
  coeff_t e13A;
  coeff_t e23A;
  coeff_t e14A;
  coeff_t e24A;
  coeff_t e34A;
  coeff_t e15A;
  coeff_t e25A;
  coeff_t e35A;
  coeff_t e45A;
  coeff_t e16A;
  coeff_t e26A;
  coeff_t e36A;
  coeff_t e46A;
  coeff_t e56A;
  coeff_t e17A;
  coeff_t e27A;
  coeff_t e37A;
  coeff_t e47A;
  coeff_t e57A;
  coeff_t e67A;
  coeff_t e18A;
  coeff_t e28A;
  coeff_t e38A;
  coeff_t e48A;
  coeff_t e58A;
  coeff_t e68A;
  coeff_t e78A;
  coeff_t e19A;
  coeff_t e29A;
  coeff_t e39A;
  coeff_t e49A;
  coeff_t e59A;
  coeff_t e69A;
  coeff_t e79A;
  coeff_t e89A;
  // Order 4
  coeff_t e1234;
  coeff_t e1235;
  coeff_t e1245;
  coeff_t e1345;
  coeff_t e2345;
  coeff_t e1236;
  coeff_t e1246;
  coeff_t e1346;
  coeff_t e2346;
  coeff_t e1256;
  coeff_t e1356;
  coeff_t e2356;
  coeff_t e1456;
  coeff_t e2456;
  coeff_t e3456;
  coeff_t e1237;
  coeff_t e1247;
  coeff_t e1347;
  coeff_t e2347;
  coeff_t e1257;
  coeff_t e1357;
  coeff_t e2357;
  coeff_t e1457;
  coeff_t e2457;
  coeff_t e3457;
  coeff_t e1267;
  coeff_t e1367;
  coeff_t e2367;
  coeff_t e1467;
  coeff_t e2467;
  coeff_t e3467;
  coeff_t e1567;
  coeff_t e2567;
  coeff_t e3567;
  coeff_t e4567;
  coeff_t e1238;
  coeff_t e1248;
  coeff_t e1348;
  coeff_t e2348;
  coeff_t e1258;
  coeff_t e1358;
  coeff_t e2358;
  coeff_t e1458;
  coeff_t e2458;
  coeff_t e3458;
  coeff_t e1268;
  coeff_t e1368;
  coeff_t e2368;
  coeff_t e1468;
  coeff_t e2468;
  coeff_t e3468;
  coeff_t e1568;
  coeff_t e2568;
  coeff_t e3568;
  coeff_t e4568;
  coeff_t e1278;
  coeff_t e1378;
  coeff_t e2378;
  coeff_t e1478;
  coeff_t e2478;
  coeff_t e3478;
  coeff_t e1578;
  coeff_t e2578;
  coeff_t e3578;
  coeff_t e4578;
  coeff_t e1678;
  coeff_t e2678;
  coeff_t e3678;
  coeff_t e4678;
  coeff_t e5678;
  coeff_t e1239;
  coeff_t e1249;
  coeff_t e1349;
  coeff_t e2349;
  coeff_t e1259;
  coeff_t e1359;
  coeff_t e2359;
  coeff_t e1459;
  coeff_t e2459;
  coeff_t e3459;
  coeff_t e1269;
  coeff_t e1369;
  coeff_t e2369;
  coeff_t e1469;
  coeff_t e2469;
  coeff_t e3469;
  coeff_t e1569;
  coeff_t e2569;
  coeff_t e3569;
  coeff_t e4569;
  coeff_t e1279;
  coeff_t e1379;
  coeff_t e2379;
  coeff_t e1479;
  coeff_t e2479;
  coeff_t e3479;
  coeff_t e1579;
  coeff_t e2579;
  coeff_t e3579;
  coeff_t e4579;
  coeff_t e1679;
  coeff_t e2679;
  coeff_t e3679;
  coeff_t e4679;
  coeff_t e5679;
  coeff_t e1289;
  coeff_t e1389;
  coeff_t e2389;
  coeff_t e1489;
  coeff_t e2489;
  coeff_t e3489;
  coeff_t e1589;
  coeff_t e2589;
  coeff_t e3589;
  coeff_t e4589;
  coeff_t e1689;
  coeff_t e2689;
  coeff_t e3689;
  coeff_t e4689;
  coeff_t e5689;
  coeff_t e1789;
  coeff_t e2789;
  coeff_t e3789;
  coeff_t e4789;
  coeff_t e5789;
  coeff_t e6789;
  coeff_t e123A;
  coeff_t e124A;
  coeff_t e134A;
  coeff_t e234A;
  coeff_t e125A;
  coeff_t e135A;
  coeff_t e235A;
  coeff_t e145A;
  coeff_t e245A;
  coeff_t e345A;
  coeff_t e126A;
  coeff_t e136A;
  coeff_t e236A;
  coeff_t e146A;
  coeff_t e246A;
  coeff_t e346A;
  coeff_t e156A;
  coeff_t e256A;
  coeff_t e356A;
  coeff_t e456A;
  coeff_t e127A;
  coeff_t e137A;
  coeff_t e237A;
  coeff_t e147A;
  coeff_t e247A;
  coeff_t e347A;
  coeff_t e157A;
  coeff_t e257A;
  coeff_t e357A;
  coeff_t e457A;
  coeff_t e167A;
  coeff_t e267A;
  coeff_t e367A;
  coeff_t e467A;
  coeff_t e567A;
  coeff_t e128A;
  coeff_t e138A;
  coeff_t e238A;
  coeff_t e148A;
  coeff_t e248A;
  coeff_t e348A;
  coeff_t e158A;
  coeff_t e258A;
  coeff_t e358A;
  coeff_t e458A;
  coeff_t e168A;
  coeff_t e268A;
  coeff_t e368A;
  coeff_t e468A;
  coeff_t e568A;
  coeff_t e178A;
  coeff_t e278A;
  coeff_t e378A;
  coeff_t e478A;
  coeff_t e578A;
  coeff_t e678A;
  coeff_t e129A;
  coeff_t e139A;
  coeff_t e239A;
  coeff_t e149A;
  coeff_t e249A;
  coeff_t e349A;
  coeff_t e159A;
  coeff_t e259A;
  coeff_t e359A;
  coeff_t e459A;
  coeff_t e169A;
  coeff_t e269A;
  coeff_t e369A;
  coeff_t e469A;
  coeff_t e569A;
  coeff_t e179A;
  coeff_t e279A;
  coeff_t e379A;
  coeff_t e479A;
  coeff_t e579A;
  coeff_t e679A;
  coeff_t e189A;
  coeff_t e289A;
  coeff_t e389A;
  coeff_t e489A;
  coeff_t e589A;
  coeff_t e689A;
  coeff_t e789A;
  // Order 5
  coeff_t e12345;
  coeff_t e12346;
  coeff_t e12356;
  coeff_t e12456;
  coeff_t e13456;
  coeff_t e23456;
  coeff_t e12347;
  coeff_t e12357;
  coeff_t e12457;
  coeff_t e13457;
  coeff_t e23457;
  coeff_t e12367;
  coeff_t e12467;
  coeff_t e13467;
  coeff_t e23467;
  coeff_t e12567;
  coeff_t e13567;
  coeff_t e23567;
  coeff_t e14567;
  coeff_t e24567;
  coeff_t e34567;
  coeff_t e12348;
  coeff_t e12358;
  coeff_t e12458;
  coeff_t e13458;
  coeff_t e23458;
  coeff_t e12368;
  coeff_t e12468;
  coeff_t e13468;
  coeff_t e23468;
  coeff_t e12568;
  coeff_t e13568;
  coeff_t e23568;
  coeff_t e14568;
  coeff_t e24568;
  coeff_t e34568;
  coeff_t e12378;
  coeff_t e12478;
  coeff_t e13478;
  coeff_t e23478;
  coeff_t e12578;
  coeff_t e13578;
  coeff_t e23578;
  coeff_t e14578;
  coeff_t e24578;
  coeff_t e34578;
  coeff_t e12678;
  coeff_t e13678;
  coeff_t e23678;
  coeff_t e14678;
  coeff_t e24678;
  coeff_t e34678;
  coeff_t e15678;
  coeff_t e25678;
  coeff_t e35678;
  coeff_t e45678;
  coeff_t e12349;
  coeff_t e12359;
  coeff_t e12459;
  coeff_t e13459;
  coeff_t e23459;
  coeff_t e12369;
  coeff_t e12469;
  coeff_t e13469;
  coeff_t e23469;
  coeff_t e12569;
  coeff_t e13569;
  coeff_t e23569;
  coeff_t e14569;
  coeff_t e24569;
  coeff_t e34569;
  coeff_t e12379;
  coeff_t e12479;
  coeff_t e13479;
  coeff_t e23479;
  coeff_t e12579;
  coeff_t e13579;
  coeff_t e23579;
  coeff_t e14579;
  coeff_t e24579;
  coeff_t e34579;
  coeff_t e12679;
  coeff_t e13679;
  coeff_t e23679;
  coeff_t e14679;
  coeff_t e24679;
  coeff_t e34679;
  coeff_t e15679;
  coeff_t e25679;
  coeff_t e35679;
  coeff_t e45679;
  coeff_t e12389;
  coeff_t e12489;
  coeff_t e13489;
  coeff_t e23489;
  coeff_t e12589;
  coeff_t e13589;
  coeff_t e23589;
  coeff_t e14589;
  coeff_t e24589;
  coeff_t e34589;
  coeff_t e12689;
  coeff_t e13689;
  coeff_t e23689;
  coeff_t e14689;
  coeff_t e24689;
  coeff_t e34689;
  coeff_t e15689;
  coeff_t e25689;
  coeff_t e35689;
  coeff_t e45689;
  coeff_t e12789;
  coeff_t e13789;
  coeff_t e23789;
  coeff_t e14789;
  coeff_t e24789;
  coeff_t e34789;
  coeff_t e15789;
  coeff_t e25789;
  coeff_t e35789;
  coeff_t e45789;
  coeff_t e16789;
  coeff_t e26789;
  coeff_t e36789;
  coeff_t e46789;
  coeff_t e56789;
  coeff_t e1234A;
  coeff_t e1235A;
  coeff_t e1245A;
  coeff_t e1345A;
  coeff_t e2345A;
  coeff_t e1236A;
  coeff_t e1246A;
  coeff_t e1346A;
  coeff_t e2346A;
  coeff_t e1256A;
  coeff_t e1356A;
  coeff_t e2356A;
  coeff_t e1456A;
  coeff_t e2456A;
  coeff_t e3456A;
  coeff_t e1237A;
  coeff_t e1247A;
  coeff_t e1347A;
  coeff_t e2347A;
  coeff_t e1257A;
  coeff_t e1357A;
  coeff_t e2357A;
  coeff_t e1457A;
  coeff_t e2457A;
  coeff_t e3457A;
  coeff_t e1267A;
  coeff_t e1367A;
  coeff_t e2367A;
  coeff_t e1467A;
  coeff_t e2467A;
  coeff_t e3467A;
  coeff_t e1567A;
  coeff_t e2567A;
  coeff_t e3567A;
  coeff_t e4567A;
  coeff_t e1238A;
  coeff_t e1248A;
  coeff_t e1348A;
  coeff_t e2348A;
  coeff_t e1258A;
  coeff_t e1358A;
  coeff_t e2358A;
  coeff_t e1458A;
  coeff_t e2458A;
  coeff_t e3458A;
  coeff_t e1268A;
  coeff_t e1368A;
  coeff_t e2368A;
  coeff_t e1468A;
  coeff_t e2468A;
  coeff_t e3468A;
  coeff_t e1568A;
  coeff_t e2568A;
  coeff_t e3568A;
  coeff_t e4568A;
  coeff_t e1278A;
  coeff_t e1378A;
  coeff_t e2378A;
  coeff_t e1478A;
  coeff_t e2478A;
  coeff_t e3478A;
  coeff_t e1578A;
  coeff_t e2578A;
  coeff_t e3578A;
  coeff_t e4578A;
  coeff_t e1678A;
  coeff_t e2678A;
  coeff_t e3678A;
  coeff_t e4678A;
  coeff_t e5678A;
  coeff_t e1239A;
  coeff_t e1249A;
  coeff_t e1349A;
  coeff_t e2349A;
  coeff_t e1259A;
  coeff_t e1359A;
  coeff_t e2359A;
  coeff_t e1459A;
  coeff_t e2459A;
  coeff_t e3459A;
  coeff_t e1269A;
  coeff_t e1369A;
  coeff_t e2369A;
  coeff_t e1469A;
  coeff_t e2469A;
  coeff_t e3469A;
  coeff_t e1569A;
  coeff_t e2569A;
  coeff_t e3569A;
  coeff_t e4569A;
  coeff_t e1279A;
  coeff_t e1379A;
  coeff_t e2379A;
  coeff_t e1479A;
  coeff_t e2479A;
  coeff_t e3479A;
  coeff_t e1579A;
  coeff_t e2579A;
  coeff_t e3579A;
  coeff_t e4579A;
  coeff_t e1679A;
  coeff_t e2679A;
  coeff_t e3679A;
  coeff_t e4679A;
  coeff_t e5679A;
  coeff_t e1289A;
  coeff_t e1389A;
  coeff_t e2389A;
  coeff_t e1489A;
  coeff_t e2489A;
  coeff_t e3489A;
  coeff_t e1589A;
  coeff_t e2589A;
  coeff_t e3589A;
  coeff_t e4589A;
  coeff_t e1689A;
  coeff_t e2689A;
  coeff_t e3689A;
  coeff_t e4689A;
  coeff_t e5689A;
  coeff_t e1789A;
  coeff_t e2789A;
  coeff_t e3789A;
  coeff_t e4789A;
  coeff_t e5789A;
  coeff_t e6789A;
  // Order 6
  coeff_t e123456;
  coeff_t e123457;
  coeff_t e123467;
  coeff_t e123567;
  coeff_t e124567;
  coeff_t e134567;
  coeff_t e234567;
  coeff_t e123458;
  coeff_t e123468;
  coeff_t e123568;
  coeff_t e124568;
  coeff_t e134568;
  coeff_t e234568;
  coeff_t e123478;
  coeff_t e123578;
  coeff_t e124578;
  coeff_t e134578;
  coeff_t e234578;
  coeff_t e123678;
  coeff_t e124678;
  coeff_t e134678;
  coeff_t e234678;
  coeff_t e125678;
  coeff_t e135678;
  coeff_t e235678;
  coeff_t e145678;
  coeff_t e245678;
  coeff_t e345678;
  coeff_t e123459;
  coeff_t e123469;
  coeff_t e123569;
  coeff_t e124569;
  coeff_t e134569;
  coeff_t e234569;
  coeff_t e123479;
  coeff_t e123579;
  coeff_t e124579;
  coeff_t e134579;
  coeff_t e234579;
  coeff_t e123679;
  coeff_t e124679;
  coeff_t e134679;
  coeff_t e234679;
  coeff_t e125679;
  coeff_t e135679;
  coeff_t e235679;
  coeff_t e145679;
  coeff_t e245679;
  coeff_t e345679;
  coeff_t e123489;
  coeff_t e123589;
  coeff_t e124589;
  coeff_t e134589;
  coeff_t e234589;
  coeff_t e123689;
  coeff_t e124689;
  coeff_t e134689;
  coeff_t e234689;
  coeff_t e125689;
  coeff_t e135689;
  coeff_t e235689;
  coeff_t e145689;
  coeff_t e245689;
  coeff_t e345689;
  coeff_t e123789;
  coeff_t e124789;
  coeff_t e134789;
  coeff_t e234789;
  coeff_t e125789;
  coeff_t e135789;
  coeff_t e235789;
  coeff_t e145789;
  coeff_t e245789;
  coeff_t e345789;
  coeff_t e126789;
  coeff_t e136789;
  coeff_t e236789;
  coeff_t e146789;
  coeff_t e246789;
  coeff_t e346789;
  coeff_t e156789;
  coeff_t e256789;
  coeff_t e356789;
  coeff_t e456789;
  coeff_t e12345A;
  coeff_t e12346A;
  coeff_t e12356A;
  coeff_t e12456A;
  coeff_t e13456A;
  coeff_t e23456A;
  coeff_t e12347A;
  coeff_t e12357A;
  coeff_t e12457A;
  coeff_t e13457A;
  coeff_t e23457A;
  coeff_t e12367A;
  coeff_t e12467A;
  coeff_t e13467A;
  coeff_t e23467A;
  coeff_t e12567A;
  coeff_t e13567A;
  coeff_t e23567A;
  coeff_t e14567A;
  coeff_t e24567A;
  coeff_t e34567A;
  coeff_t e12348A;
  coeff_t e12358A;
  coeff_t e12458A;
  coeff_t e13458A;
  coeff_t e23458A;
  coeff_t e12368A;
  coeff_t e12468A;
  coeff_t e13468A;
  coeff_t e23468A;
  coeff_t e12568A;
  coeff_t e13568A;
  coeff_t e23568A;
  coeff_t e14568A;
  coeff_t e24568A;
  coeff_t e34568A;
  coeff_t e12378A;
  coeff_t e12478A;
  coeff_t e13478A;
  coeff_t e23478A;
  coeff_t e12578A;
  coeff_t e13578A;
  coeff_t e23578A;
  coeff_t e14578A;
  coeff_t e24578A;
  coeff_t e34578A;
  coeff_t e12678A;
  coeff_t e13678A;
  coeff_t e23678A;
  coeff_t e14678A;
  coeff_t e24678A;
  coeff_t e34678A;
  coeff_t e15678A;
  coeff_t e25678A;
  coeff_t e35678A;
  coeff_t e45678A;
  coeff_t e12349A;
  coeff_t e12359A;
  coeff_t e12459A;
  coeff_t e13459A;
  coeff_t e23459A;
  coeff_t e12369A;
  coeff_t e12469A;
  coeff_t e13469A;
  coeff_t e23469A;
  coeff_t e12569A;
  coeff_t e13569A;
  coeff_t e23569A;
  coeff_t e14569A;
  coeff_t e24569A;
  coeff_t e34569A;
  coeff_t e12379A;
  coeff_t e12479A;
  coeff_t e13479A;
  coeff_t e23479A;
  coeff_t e12579A;
  coeff_t e13579A;
  coeff_t e23579A;
  coeff_t e14579A;
  coeff_t e24579A;
  coeff_t e34579A;
  coeff_t e12679A;
  coeff_t e13679A;
  coeff_t e23679A;
  coeff_t e14679A;
  coeff_t e24679A;
  coeff_t e34679A;
  coeff_t e15679A;
  coeff_t e25679A;
  coeff_t e35679A;
  coeff_t e45679A;
  coeff_t e12389A;
  coeff_t e12489A;
  coeff_t e13489A;
  coeff_t e23489A;
  coeff_t e12589A;
  coeff_t e13589A;
  coeff_t e23589A;
  coeff_t e14589A;
  coeff_t e24589A;
  coeff_t e34589A;
  coeff_t e12689A;
  coeff_t e13689A;
  coeff_t e23689A;
  coeff_t e14689A;
  coeff_t e24689A;
  coeff_t e34689A;
  coeff_t e15689A;
  coeff_t e25689A;
  coeff_t e35689A;
  coeff_t e45689A;
  coeff_t e12789A;
  coeff_t e13789A;
  coeff_t e23789A;
  coeff_t e14789A;
  coeff_t e24789A;
  coeff_t e34789A;
  coeff_t e15789A;
  coeff_t e25789A;
  coeff_t e35789A;
  coeff_t e45789A;
  coeff_t e16789A;
  coeff_t e26789A;
  coeff_t e36789A;
  coeff_t e46789A;
  coeff_t e56789A;
  // Order 7
  coeff_t e1234567;
  coeff_t e1234568;
  coeff_t e1234578;
  coeff_t e1234678;
  coeff_t e1235678;
  coeff_t e1245678;
  coeff_t e1345678;
  coeff_t e2345678;
  coeff_t e1234569;
  coeff_t e1234579;
  coeff_t e1234679;
  coeff_t e1235679;
  coeff_t e1245679;
  coeff_t e1345679;
  coeff_t e2345679;
  coeff_t e1234589;
  coeff_t e1234689;
  coeff_t e1235689;
  coeff_t e1245689;
  coeff_t e1345689;
  coeff_t e2345689;
  coeff_t e1234789;
  coeff_t e1235789;
  coeff_t e1245789;
  coeff_t e1345789;
  coeff_t e2345789;
  coeff_t e1236789;
  coeff_t e1246789;
  coeff_t e1346789;
  coeff_t e2346789;
  coeff_t e1256789;
  coeff_t e1356789;
  coeff_t e2356789;
  coeff_t e1456789;
  coeff_t e2456789;
  coeff_t e3456789;
  coeff_t e123456A;
  coeff_t e123457A;
  coeff_t e123467A;
  coeff_t e123567A;
  coeff_t e124567A;
  coeff_t e134567A;
  coeff_t e234567A;
  coeff_t e123458A;
  coeff_t e123468A;
  coeff_t e123568A;
  coeff_t e124568A;
  coeff_t e134568A;
  coeff_t e234568A;
  coeff_t e123478A;
  coeff_t e123578A;
  coeff_t e124578A;
  coeff_t e134578A;
  coeff_t e234578A;
  coeff_t e123678A;
  coeff_t e124678A;
  coeff_t e134678A;
  coeff_t e234678A;
  coeff_t e125678A;
  coeff_t e135678A;
  coeff_t e235678A;
  coeff_t e145678A;
  coeff_t e245678A;
  coeff_t e345678A;
  coeff_t e123459A;
  coeff_t e123469A;
  coeff_t e123569A;
  coeff_t e124569A;
  coeff_t e134569A;
  coeff_t e234569A;
  coeff_t e123479A;
  coeff_t e123579A;
  coeff_t e124579A;
  coeff_t e134579A;
  coeff_t e234579A;
  coeff_t e123679A;
  coeff_t e124679A;
  coeff_t e134679A;
  coeff_t e234679A;
  coeff_t e125679A;
  coeff_t e135679A;
  coeff_t e235679A;
  coeff_t e145679A;
  coeff_t e245679A;
  coeff_t e345679A;
  coeff_t e123489A;
  coeff_t e123589A;
  coeff_t e124589A;
  coeff_t e134589A;
  coeff_t e234589A;
  coeff_t e123689A;
  coeff_t e124689A;
  coeff_t e134689A;
  coeff_t e234689A;
  coeff_t e125689A;
  coeff_t e135689A;
  coeff_t e235689A;
  coeff_t e145689A;
  coeff_t e245689A;
  coeff_t e345689A;
  coeff_t e123789A;
  coeff_t e124789A;
  coeff_t e134789A;
  coeff_t e234789A;
  coeff_t e125789A;
  coeff_t e135789A;
  coeff_t e235789A;
  coeff_t e145789A;
  coeff_t e245789A;
  coeff_t e345789A;
  coeff_t e126789A;
  coeff_t e136789A;
  coeff_t e236789A;
  coeff_t e146789A;
  coeff_t e246789A;
  coeff_t e346789A;
  coeff_t e156789A;
  coeff_t e256789A;
  coeff_t e356789A;
  coeff_t e456789A;
  // Order 8
  coeff_t e12345678;
  coeff_t e12345679;
  coeff_t e12345689;
  coeff_t e12345789;
  coeff_t e12346789;
  coeff_t e12356789;
  coeff_t e12456789;
  coeff_t e13456789;
  coeff_t e23456789;
  coeff_t e1234567A;
  coeff_t e1234568A;
  coeff_t e1234578A;
  coeff_t e1234678A;
  coeff_t e1235678A;
  coeff_t e1245678A;
  coeff_t e1345678A;
  coeff_t e2345678A;
  coeff_t e1234569A;
  coeff_t e1234579A;
  coeff_t e1234679A;
  coeff_t e1235679A;
  coeff_t e1245679A;
  coeff_t e1345679A;
  coeff_t e2345679A;
  coeff_t e1234589A;
  coeff_t e1234689A;
  coeff_t e1235689A;
  coeff_t e1245689A;
  coeff_t e1345689A;
  coeff_t e2345689A;
  coeff_t e1234789A;
  coeff_t e1235789A;
  coeff_t e1245789A;
  coeff_t e1345789A;
  coeff_t e2345789A;
  coeff_t e1236789A;
  coeff_t e1246789A;
  coeff_t e1346789A;
  coeff_t e2346789A;
  coeff_t e1256789A;
  coeff_t e1356789A;
  coeff_t e2356789A;
  coeff_t e1456789A;
  coeff_t e2456789A;
  coeff_t e3456789A;
  // Order 9
  coeff_t e123456789;
  coeff_t e12345678A;
  coeff_t e12345679A;
  coeff_t e12345689A;
  coeff_t e12345789A;
  coeff_t e12346789A;
  coeff_t e12356789A;
  coeff_t e12456789A;
  coeff_t e13456789A;
  coeff_t e23456789A;
  // Order 10
  coeff_t e123456789A;
} mdnum10_t;




// ----------------------------------------------------------------------------------------------------
// -------------------------------------    END STRUCTURES      ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#endif
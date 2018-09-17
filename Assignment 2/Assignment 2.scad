smCube = 3;
smCubeColor = [0.980, 0, 0.760];
smCube2 = smCube;
smCubeColor2 = [0.682, 0, 0.941];

rotationSm = 70;

lgCube = 10;
lgCubeColor = [0.258, 0.850, 0.956];
lgCube2 = lgCube;
lgCubeColor2 = [0, 0.870, 0.941];

rotationlg = 138;

color(smCubeColor)rotate([rotationSm,0,rotationSm])cube(smCube,center = true);
color(smCubeColor2) rotate([-(rotationSm),0,-(rotationSm)])cube(smCube2,center = true);

translate([0,lgCube,0]){rotate([(rotationlg)/2,0,rotationlg])color(lgCubeColor)
 cube(lgCube, center = true);
 rotate([-(rotationlg)/2,0,-(rotationlg)])color(lgCubeColor2)cube(lgCube2, center = true);}
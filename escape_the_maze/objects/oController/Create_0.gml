///setup grid and distribute coins and turrets

randomize();

//dimensions of each grid tile
dim = 32;

//dimensions of grid in tiles
gWidth = 67;
gHeight = 36;

//create the grid
grid = ds_grid_create(gWidth, gHeight);

var aa, bb;

//places coins
for (aa = 0; aa < gWidth; aa++) {
	for (bb = 0; bb < gHeight; bb++) {
		if (instance_position(aa, bb, oWall2)) {
			if (irandom_range(1, 6) == 1) {
				instance_place(aa,bb,oCoin);
			}
		}
	}
}

	
///SetWeaponColorFromNESPalette(primaryCol,secondaryCol)

var Col1,Col2;
Col1 = argument0;
Col2 = argument1;
primaryCol = make_color_rgb(global.nesPalette[Col1, 0], global.nesPalette[Col1, 1], global.nesPalette[Col1, 2]);
secondaryCol = make_color_rgb(global.nesPalette[Col2, 0], global.nesPalette[Col2, 1], global.nesPalette[Col2, 2]);

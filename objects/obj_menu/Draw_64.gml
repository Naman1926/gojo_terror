draw_set_font(fnt_menu)
draw_set_color(c_white)

for(var i = 0; i < quant; i++){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	if(index == i){draw_set_color(c_aqua)}
	else{draw_set_color(c_white)}
	draw_text(x1, y1 + (dist * i), texto[i])
}

draw_set_font(-1)
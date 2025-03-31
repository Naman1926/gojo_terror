image_xscale = -1
tem_luz = false
luz = noone
porta = obj_porta_dir

if(global._spr_luz_dir){
	luz = instance_create_layer(porta.x, porta.y, "instance_luzes", obj_luz)
	tem_luz = true
}
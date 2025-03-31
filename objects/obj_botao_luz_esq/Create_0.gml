tem_luz = false
luz = noone
porta = obj_porta_esq

if(global._spr_luz_esq){
	luz = instance_create_layer(porta.x, porta.y, "instance_luzes", obj_luz)
	tem_luz = true
}
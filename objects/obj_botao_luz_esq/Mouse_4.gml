if(global._pode_ligar_luz){
	if(!tem_luz){
		luz = instance_create_layer(porta.x, porta.y, "instance_luzes", obj_luz)
		tem_luz = true
	}else{
		instance_destroy(luz)
		luz = noone
		tem_luz = false
	}
}
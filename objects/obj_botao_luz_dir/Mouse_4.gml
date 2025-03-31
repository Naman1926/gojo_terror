if(global._pode_ligar_luz){
	if(!tem_luz){
		audio_play_sound(snd_luz, 1, false)
		luz = instance_create_layer(porta.x, porta.y, "instance_luzes", obj_luz)
		tem_luz = true
		global._spr_luz_dir = 1
		global._uso_bateria++
		
	}else{
		instance_destroy(luz)
		audio_play_sound(snd_luz, 1, false)
		luz = noone
		tem_luz = false
		global._spr_luz_dir = 0
		global._uso_bateria--

	}
}
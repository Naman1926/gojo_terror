if(global._cam_atual == 6 && obj_porta_dir.sprite_index == spr_porta_fechada && obj_botao_luz_dir.tem_luz){
	sprite_index = spr_janela_luz_gojo
	
}else if(obj_botao_luz_dir.tem_luz){
	sprite_index = spr_janela_luz
	
}else{
	sprite_index = spr_janela_apagada
	
}
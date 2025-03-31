#region fechar_abrir
	if (sprite_index == spr_porta_fechando && image_index >= image_number - 1) {
		global._pode_abrir_porta = true
		sprite_index = spr_porta_fechada
		global._spr_porta_dir = 1
	}else if(sprite_index == spr_porta_abrindo && image_index >= image_number - 1){
		global._pode_abrir_porta = true
		sprite_index = spr_porta_aberta
		global._spr_porta_dir = 0
	}
#endregion

if(obj_botao_luz_dir.tem_luz && sprite_index == spr_porta_aberta && global._cam_atual == 6){
	sprite_index = spr_porta_gojo
}else if(sprite_index == spr_porta_gojo && !obj_botao_luz_dir.tem_luz){
	sprite_index = spr_porta_aberta
}
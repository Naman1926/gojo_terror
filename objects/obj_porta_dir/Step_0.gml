#region fechar_abrir
	if (sprite_index == spr_porta_fechando && image_index >= image_number - 1) {
		sprite_index = spr_porta_fechada
	}else if(sprite_index == spr_porta_abrindo && image_index >= image_number - 1){
		sprite_index = spr_porta_aberta
	}
#endregion
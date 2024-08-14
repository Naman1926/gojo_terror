for(var _i = 0; _i < array_length(global._cams); _i++){
	if(_i == global._cam_atual){
		global._cams[_i].sprite_index = spr_teste2
	}
	else{
		global._cams[_i].sprite_index = spr_testes
	}
}
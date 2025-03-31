global._cam_atual = 0
global._pode_abrir_porta = true
global._pode_ligar_luz = true
global._cam_funcionando = false
global._cam_verificar = 0
global._spr_porta_esq = 0
global._spr_porta_dir = 0
global._spr_luz_esq = 0
global._spr_luz_dir = 0
global._jumpscare = false
global._cronometro_jump = 60*5
global._dificuldade = 0
global._uso_bateria = 1

global._cams = [
	obj_cam_0,
	obj_cam_1, 
	obj_cam_2, 
	obj_cam_3, 
	obj_cam_4, 
	obj_cam_5, 
	obj_cam_6, 
	obj_cam_7, 
	obj_cam_8
]

function calcular_mov(_cam_atual0){
	switch _cam_atual0{
		
		//esquerda
		case 0:
				switch irandom_range(0, 2){
					case 0: global._cam_atual = 1
					break
					case 1: global._cam_atual = 4
					break
					case 2: global._cam_atual = 4
					break
				}
		break
		case 1:
				switch irandom_range(0, 2){
					case 0: global._cam_atual = 0
					break
					case 1: global._cam_atual = 2
					break
					case 2: global._cam_atual = 2
					break
				}
		break
		case 2:
				switch irandom_range(0, 2){
					case 0: global._cam_atual = 3
						global._jumpscare = true
						audio_play_sound(snd_bater_porta, 1, false)
					break
					case 1: global._cam_atual = 3
						global._jumpscare = true
						audio_play_sound(snd_bater_porta, 1, false)
					break
					case 2: global._cam_atual = 2
					break
				}
		break
		
		//direita
		
		case 4:
				switch irandom_range(0, 4){
					case 0: global._cam_atual = 0
					break
					case 1: global._cam_atual = 5
					break
					case 2: global._cam_atual = 5
					break
					case 3: global._cam_atual = 7
					break
					case 4: global._cam_atual = 7
					break
				}
		break
		case 5:
				switch irandom_range(0, 2){
					case 0: global._cam_atual = 4
					break
					case 1: global._cam_atual = 6
						global._jumpscare = true
						audio_play_sound(snd_bater_porta, 1, false)
					break
					case 2: global._cam_atual = 6
						global._jumpscare = true
						audio_play_sound(snd_bater_porta, 1, false)
					break
				}
		break
			
		//jardim
		case 7:
				switch irandom_range(0, 2){
					case 0: global._cam_atual = 4
					break
					case 1: global._cam_atual = 8
					break
					case 2: global._cam_atual = 8
					break
				}
		break
		case 8:
				switch irandom_range(0, 2){
					case 0: global._cam_atual = 0
					break
					case 1: global._cam_atual = 3
						global._jumpscare = true
						audio_play_sound(snd_bater_porta, 1, false)
					break
					case 2: global._cam_atual = 6
						global._jumpscare = true
						audio_play_sound(snd_bater_porta, 1, false)
					break
				}
		break
	}
}

function alterar_porta(_objporta){
	if(_objporta.sprite_index == spr_porta_aberta || _objporta.sprite_index == spr_porta_gojo){
		
		_objporta.sprite_index = spr_porta_fechando
		global._uso_bateria++
		
	}else if(_objporta.sprite_index == spr_porta_fechada){
		
		_objporta.sprite_index = spr_porta_abrindo
		global._uso_bateria--
		
	}
}

function escolher_cam(_num_cam){
	var _cam = 0
	
	switch _num_cam{
		case 0:
			if(global._cam_atual == 0){
				_cam = spr_sala_gojo
			}
			else{
				_cam = spr_sala
			}
			global._cam_verificar = _num_cam
		break
		case 1:
			if(global._cam_atual == 1){
				_cam = spr_quarto_esq_gojo
			}
			else{
				_cam = spr_quarto_esq
			}
			global._cam_verificar = _num_cam
		break
		case 2:
			if(global._cam_atual == 2){
				_cam = spr_corredor_esq_gojo
			}
			else{
				_cam = spr_corredor_esq
			}
			global._cam_verificar = _num_cam
		break
		case 3:
			if(global._cam_atual == 4){
				_cam = spr_quarto_dir_gojo
			}
			else{
				_cam = spr_quarto_dir
			}
			global._cam_verificar = _num_cam
		break
		case 4:
			if(global._cam_atual == 5){
				_cam = spr_corredor_dir_gojo
			}
			else{
				_cam = spr_corredor_dir
			}
			global._cam_verificar = _num_cam
		break
		case 5:
			if(global._cam_atual == 7){
				_cam = spr_caminho_gojo
			}
			else{
				_cam = spr_caminho
			}
			global._cam_verificar = _num_cam
		break
		case 6:
			if(global._cam_atual == 8){
				_cam = spr_jardim_gojo
			}
			else{
				_cam = spr_jardim
			}
			global._cam_verificar = _num_cam
		break
		
	}
	return _cam
}

function mudar_cam(_numero_camera){
	var _cam = escolher_cam(_numero_camera)
	obj_tablet.sprite_index = _cam
}

function abrir_cam(){
	if(global._cam_funcionando == false){
		room_goto(room_cams)
		audio_play_sound(snd_tablet_pegar, 1, false)
		global._cam_funcionando = true
		global._uso_bateria++
	}else{
		room_goto(room_teste)
		audio_play_sound(snd_tablet_pegar, 1, false)
		global._cam_funcionando = false
		global._uso_bateria--
	}
}

function jumpscare(){
	if(global._spr_porta_esq == 1 && global._cam_atual == 3){
		audio_play_sound(snd_andando, 1, false)
		global._cam_atual = 0
	}else if(global._spr_porta_dir == 1 && global._cam_atual == 6){
		audio_play_sound(snd_andando, 1, false)
		global._cam_atual = 0
	}else{
		susto()
	}
}

function susto(){
	obj_gojo.sprite_index = spr_susto
	audio_play_sound(snd_susto, 2, false)
	obj_gojo.alarm[1] = 60*5
}
global._cam_atual = 0
global._pode_abrir_porta = true
global._pode_ligar_luz = true

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
				switch irandom_range(0, 1){
					case 0: global._cam_atual = 1
					break
					case 1: global._cam_atual = 4
					break
				}
		break
		case 1:
				switch irandom_range(0, 1){
					case 0: global._cam_atual = 0
					break
					case 1: global._cam_atual = 2
					break
				}
		break
		case 2:
				switch irandom_range(0, 1){
					case 0: global._cam_atual = 3
					break
					case 1: global._cam_atual = 2
					break
				}
		break
		case 3:
				obj_gojo.alarm[1] = 60*10
		break
		
		//direita
		
		case 4:
				switch irandom_range(0, 2){
					case 0: global._cam_atual = 0
					break
					case 1: global._cam_atual = 5
					break
					case 2: global._cam_atual = 7
					break
				}
		break
		case 5:
				switch irandom_range(0, 1){
					case 0: global._cam_atual = 4
					break
					case 1: global._cam_atual = 6
					break
				}
		break
		case 6:
				obj_gojo.alarm[1] = 60*10
		break
			
		//jardim
		case 7:
				switch irandom_range(0, 1){
					case 0: global._cam_atual = 4
					break
					case 1: global._cam_atual = 8
					break
				}
		break
		case 8:
				switch irandom_range(0, 1){
					case 0: global._cam_atual = 8
					break
					case 1: global._cam_atual = 0
					break
				}
		break
	}
}

function alterar_porta(_objporta){
	if(_objporta.sprite_index == spr_porta_aberta){
		
		_objporta.sprite_index = spr_porta_fechando
		
	}else if(_objporta.sprite_index == spr_porta_fechada){
		
		_objporta.sprite_index = spr_porta_abrindo
		
	}
}
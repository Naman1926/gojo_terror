if(keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down))
{index++}
if(keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up))
{index--}

if(index > quant - 1){
	index = 0;
}
if(index < 0){
	index = quant - 1;
}
if(index == 0){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		global._dificuldade = 3
		room_goto(room_teste)
	}
}
if(index == 1){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		global._dificuldade = 5
		room_goto(room_teste)
	}
}
if(index == 2){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		global._dificuldade = 8
		room_goto(room_teste)
	}
}
if(index == 3){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		global._dificuldade = 10
		room_goto(room_teste)
	}
}
if(index == 4){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		global._dificuldade = 15
		room_goto(room_teste)
		
	}
}
if(index == 5){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		global._dificuldade = 20
		room_goto(room_teste)
	}
}
if(index == 6){
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
		game_end()
	}
}
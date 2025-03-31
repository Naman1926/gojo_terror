if(global._jumpscare == true){
	global._cronometro_jump--
}
if(global._cronometro_jump <= 0){
	global._jumpscare = false
		global._cronometro_jump = 60*5
	jumpscare()
}
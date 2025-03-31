if(global._pode_abrir_porta){
	global._pode_abrir_porta = false
	audio_play_sound(snd_abrir_porta, 1, false)
	alterar_porta(obj_porta_esq)
}
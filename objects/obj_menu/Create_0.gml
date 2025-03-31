display_set_gui_size(1366, 720);
texto = ["Noite 1", "Noite 2","Noite 3","Noite 4", "Noite 5", "Noite 6", "Sair"]
index = 0
quant = array_length(texto)
gui_largura = display_get_gui_width()
gui_altura = display_get_gui_height()
x1 = gui_largura / 2
y1 = gui_altura / 4
dist = 30

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
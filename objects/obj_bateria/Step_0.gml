image_index = global._uso_bateria - 1

if(contagem >= 1000){
	texto = "100%"
}else if(contagem >= 900){
	texto = "90%"
}else if(contagem >= 800){
	texto = "80%"
}else if(contagem >= 700){
	texto = "70%"
}else if(contagem >= 600){
	texto = "60%"
}else if(contagem >= 500){
	texto = "50%"
}else if(contagem >= 400){
	texto = "40%"
}else if(contagem >= 300){
	texto = "30%"
}else if(contagem >= 200){
	texto = "20%"
}else if(contagem >= 100){
	texto = "10%"
}else if(contagem >= 0){
	texto = "0%"
	alarm[1] = 60
}
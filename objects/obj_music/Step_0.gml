if (room == rm_startScreen) && !audio_is_playing(mus_startMenu) {
	audio_play_sound(mus_startMenu,10, true);
}
else if (!(room == rm_startScreen)) {
	audio_stop_sound(mus_startMenu);
}

if (room == rm_gameOver) && !audio_is_playing(mus_gameOver) {
	audio_play_sound(mus_gameOver,10, true);
}
else if (!(room == rm_gameOver)) {
	audio_stop_sound(mus_gameOver);
}

if (!(room == rm_startScreen || room == rm_gameOver || room == rm_youWin) && !audio_is_playing(mus_inGame) && !global.princeFight){
	audio_play_sound(mus_inGame,10, true);
}
else if (global.princeFight || (room == rm_startScreen || room == rm_gameOver || room == rm_youWin)) {
	audio_stop_sound(mus_inGame);
}
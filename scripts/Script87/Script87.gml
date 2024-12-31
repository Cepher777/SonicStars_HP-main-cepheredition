// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_music_legacy(soundid, channel = 0, loop_start_point = 0.00, loop_end_point = 0.00, loop = true){    
    //Get the sound object
    with(obj_music)
    {
        //Stop everything before BGM plays.
        audio_stop_sound(playing[channel]);
        
        //Stop jingle
        audio_stop_sound(playing[Jingle]);
        
        //Restore jingle channel value
        playing[Jingle] = noone;

        //Set the loop points
        loop_start[channel] = loop_start_point;
        loop_end[channel] = loop_end_point;
        
        //Play the sound
        play_data[channel] = sound_id;
        playing[channel] = audio_play_sound(soundid, 0, loop);
    }
}
/// @description Insert description here
// You can write your code in this editor

//Check collision with player
contact = (place_meeting(x,y,obj_player));
if !(contact) exit;

//Local va//Local va
var _player = obj_player;
var _stand = ST_CORKSCREW;
var _roll = ST_CORKSCREW_ROLL;

    //Trigger:
var _min_speed = 3 ;
var _player_groundspeed = _player.ground_speed;
var _offset = 16 ;
var _trigged = (contact) && (_player.ground) &&
	(((_player_groundspeed >= _min_speed) && (_player.x < (x + _offset))) 
	||
	((_player_groundspeed <= -_min_speed) && (_player.x > (x + object_width - _offset)))
	)
//Handle player movement on corkscrew:

if _trigged{
	_player.corkscrew_xstart = other.x;
	_player.corkscrew_ystart = other.y;
	_player.corkscrew_end = other.x + object_width;
	_player.corkscrew_curve_h = curve_height;
}

//Enable player' CORKSCREW state
if _trigged{
	with(_player){
		if state = ST_NORMAL{
			state = _stand
			y_speed = 0;
			ground = false;
		}
		if state = ST_ROLL{
			state = _roll
			y_speed = 0;
			ground = false;
		}
	}
}


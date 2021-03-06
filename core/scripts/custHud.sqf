#include "..\..\script_macros.hpp"
/*
	Author: David
	Edited: Dark (Custom colours & precise stats) 
	Community: ArmaCentral RP & Altisliferpg.com & InfiniteNetwork.xyz
	Don't edit or redistribute without asking, 1st not cool, 2nd I will DMCA you, ask slyfoxgaming :)
*/
disableSerialization;

1 cutRsc ["custHUD","PLAIN"];

waitUntil {!isNull (uiNameSpace getVariable "custHUD")};
		//Displays
		_display = uiNameSpace getVariable "custHUD";
		_healthidc = _display displayCtrl 1100;
		_foodidc = _display displayCtrl 1101;
		_thirstidc = _display displayCtrl 1102;
		_bankidc = _display displayCtrl 1103;
		_cashidc = _display displayCtrl 1104;
		_playeridc = _display displayCtrl 1105;
		
		//titles
		_banktitle = _display displayCtrl 1001;
		_cashtitle = _display displayCtrl 1002;
		_playertitle = _display displayCtrl 1006;
		
		//Stats
		_damage = round ((1 - (damage player)) * 100);
		//
		//PLEASE COMMENT OUT >>ONE<< OF THE TWO SETS OF VARIABLES BELOW
		//
		//THIS ONE OS FOR TEXT E.G. | IM HEALTHY | NEED SOME FOOD | NOT THIRSTY |
		_hunger = round (life_hunger);
		_thirst = round (life_thirst);
		
		//THIS ONE OS FOR EXACT VALUES E.G.| 100% HEALTH | 100% FOOD | 100% THIRST |
		_hunger = round (life_hunger);
		_thirst = round (life_thirst);


		_cash = [CASH] call life_fnc_numberText;
		_bank = [BANK] call life_fnc_numberText;
		_players = count playableUnits;
		
		//Colours
		_colourDefault 	= parseText "#adadad";
		_colour108		= parseText "#FF7000";
		_colour107		= parseText "#FF9000";
		_colour106		= parseText "#FFBB00";
		_colour105		= parseText "#FFCC00";
		_colour104		= parseText "#81CCDD";
		_colour103		= parseText	"#33AACC";
		_colour102		= parseText "#3388CC";
		_colour101		= parseText "#3366CC";
		_colour100 		= parseText "#336600";
		_colour90 		= parseText "#339900";
		_colour80 		= parseText "#33CC00";
		_colour70 		= parseText "#33FF00";
		_colour60 		= parseText "#66FF00";
		_colour50 		= parseText "#CCFF00";
		_colour40 		= parseText "#CCCC00";
		_colour30 		= parseText "#CC9900";
		_colour20 		= parseText "#CC6600";
		_colour10 		= parseText "#CC3300";
		_colour0 		= parseText "#CC0000";
		_colourDead 	= parseText "#000000";

		_colourDamage = _colourDefault;
		switch true do {
			case(_damage >= 100) : {_colourDamage = _colour100;};
			case((_damage >= 90) && (_damage < 100)) : {_colourDamage =  _colour100;};
			case((_damage >= 80) && (_damage < 90)) : {_colourDamage =  _colour80;};
			case((_damage >= 70) && (_damage < 80)) : {_colourDamage =  _colour70;};
			case((_damage >= 60) && (_damage < 70)) : {_colourDamage =  _colour60;};
			case((_damage >= 50) && (_damage < 60)) : {_colourDamage =  _colour50;};
			case((_damage >= 40) && (_damage < 50)) : {_colourDamage =  _colour40;};
			case((_damage >= 30) && (_damage < 40)) : {_colourDamage =  _colour30;};
			case((_damage >= 20) && (_damage < 30)) : {_colourDamage =  _colour20;};
			case((_damage >= 10) && (_damage < 20)) : {_colourDamage =  _colour10;};
			case((_damage >= 1) && (_damage < 10)) : {_colourDamage =  _colour0;};
			case(_damage < 1) :{_colourDamage =  _colourDead;};
		};
			
		_colourHunger = _colourDefault;
		switch true do {
			case(_hunger >= 100) :{_colourHunger = _colour100;};
			case((_hunger >= 90) && (_hunger < 100)) : {_colourHunger =  _colour90;};
			case((_hunger >= 80) && (_hunger < 90)) : {_colourHunger =  _colour80;};
			case((_hunger >= 70) && (_hunger < 80)) : {_colourHunger =  _colour70;};
			case((_hunger >= 60) && (_hunger < 70)) : {_colourHunger =  _colour60;};
			case((_hunger >= 50) && (_hunger < 60)) : {_colourHunger =  _colour50;};
			case((_hunger >= 40) && (_hunger < 50)) : {_colourHunger =  _colour40;};
			case((_hunger >= 30) && (_hunger < 40)) : {_colourHunger =  _colour30;};
			case((_hunger >= 20) && (_hunger < 30)) : {_colourHunger =  _colour20;};
			case((_hunger >= 10) && (_hunger < 20)) : {_colourHunger =  _colour10;};
			case((_hunger >= 1) && (_hunger < 10)) : {_colourHunger =  _colour0;};
			case(_hunger < 1) :{_colourHunger =  _colourDead;};
		};

		_colourThirst = _colourDefault;
		switch true do {
			case(_thirst >= 100) : {_colourThirst = _colour101;};
			case((_thirst >= 90) && (_thirst < 100)) :  {_colourThirst =  _colour102;};
			case((_thirst >= 80) && (_thirst < 90)) :  {_colourThirst =  _colour103;};
			case((_thirst >= 70) && (_thirst < 80)) :  {_colourThirst =  _colour104;};
			case((_thirst >= 60) && (_thirst < 70)) :  {_colourThirst =  _colour105;};
			case((_thirst >= 50) && (_thirst < 60)) :  {_colourThirst =  _colour106;};
			case((_thirst >= 40) && (_thirst < 50)) :  {_colourThirst =  _colour107;};
			case((_thirst >= 30) && (_thirst < 40)) :  {_colourThirst =  _colour108;};
			case((_thirst >= 20) && (_thirst < 30)) :  {_colourThirst =  _colour20;};
			case((_thirst >= 10) && (_thirst < 20)) :  {_colourThirst =  _colour10;};
			case((_thirst >= 1) && (_thirst < 10)) :  {_colourThirst =  _colour0;};
			case(_thirst < 1) : {_colourThirst =  _colourDead;};
		};


		if (_damage < 100) then {
                _healthtext = parseText format["Sehr Gesund"];
        } else {
        if (_damage < 85) then {
                _healthtext = parseText format["Ein paar Kratzer"];
        } else {
        if (_damage < 70) then {
                _healthtext = parseText format["Leicht verletzt"];
        } else {
        if (_damage < 60) then {
                _healthtext = parseText format["Ich Fühle mich net gut"];
        } else {
        if (_damage < 50 ) then {
                _healthtext = parseText format["Aua"];
        } else {
        if (_damage < 40) then {       
                _healthtext = parseText format["Aua Aua"];
        } else {
        if (_damage < 30) then {
                _healthtext = parseText format["Etwas muss gebrochen werden"];
        } else {
        if (_damage < 20) then {
                _healthtext = parseText format["Schrecklich verletzt"];
        } else {
        if (_damage < 10) then {
                _healthtext = parseText format["Extrem verletzt"];
        } else {
        if (_damage == 0) then {
                _healthtext = parseText format["Dead</t>"];
};};};};};};};};};};
 
if (_hunger > 90) then {
                _hungertext = parseText format["Satt"];
        } else {
        if (_hunger > 80) then {
                _hungertext = parseText format["Nicht hungrig"];
        } else {
        if (_hunger > 70) then {
                _hungertext = parseText format["Vllt ein keks"];
        } else {
        if (_hunger > 60) then {
                _hungertext = parseText format["Noch geht es"];
        } else {
        if (_hunger > 50) then {
                _hungertext = parseText format["Knorr"];
        } else {
        if (_hunger > 40) then {
                _hungertext = parseText format["Ich sollte bald essen"];
        } else {
        if (_hunger > 30) then {
                _hungertext = parseText format["Mein Magen brummelt"];
        } else {
        if (_hunger > 20) then {
                _hungertext = parseText format["jetzt essen"];
        } else {
        if (_hunger > 10) then {
                _hungertext = parseText format["Verhungern tritt ein"];
        } else {
        if (_hunger == 0) then {
                _hungertext = parseText format["Dead</t>"];
};};};};};};};};};};
 
if (_thirst > 80) then {
                _thirsttext = parseText format["Nicht durstig"];
        } else {
        if (_thirst > 70) then {
                _thirsttext = parseText format["Könnte ein Glas Wasser"];
        } else {
        if (_thirst > 60) then {
                _thirsttext = parseText format["Sollte etwas bald trinken"];
        } else {
        if (_thirst > 50) then {
                _thirsttext = parseText format["Der Hals ist etwas trocken"];
        } else {
        if (_thirst > 40) then {
                _thirsttext = parseText format["Ich sollte bald trinken"];
        } else {
        if (_thirst > 30) then {
                _thirsttext = parseText format["Meine Kehle ist trocken"];
        } else {
        if (_thirst > 20) then {
                _thirsttext = parseText format["Ich sollte jetzt trinken"];
        } else {
        if (_thirst > 10) then {
                _thirsttext = parseText format["Dehydration"];
        } else {
        if (_thirst == 0) then {
                _thirsttext = parseText format["DEAD</t>"];
};};};};};};};};};



		_healthidc ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.7' color='%3'>%2%1</t>","%",_damage,_colourDamage]);

		_foodidc ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.7' color='%3'>%2%1</t>","%",_hunger,_colourHunger]);

		_thirstidc ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.7' color='%3'>%2%1</t>","%",_thirst,_colourThirst]);

		////^^^^^^^^^^^ HAS EXACT VALUES E.G. HUNGER 100% | THIRST 100% | HEALTH 100%
		////
		//// COMMENT ONE OF THE TWO OUT AS IF YOU DONT, IT WONT WORK ---- REFER TO THE VARIABLES AT THE TOP, THE ONE YOU COMMENTED OUT CORROSPONDS TO THE ONE YOU SHOULD USE NOW!!!!!!!!
		////
		//// THIS ONE BELOW HAS TEXT E.G. HEALTH: SERIOUSLY INJURED | THIRST: NOT THIRSTY | HUNGER: NOT HUNGRY
/*
		_healthidc ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.7' color='%2'>%1</t>",_healthtext,_colourDamage]);

		_foodidc ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.7' color='%2'>%1</t>",_hungertext,_colourHunger]);

		_thirstidc ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.7' color='%2'>%1</t>",_thirsttext,_colourThirst]);
*/

		//DONT COMMENT THE BELLOW OUT
		_cashidc ctrlSetStructuredText (parseText format ["$%1",_cash]);
		_bankidc ctrlSetStructuredText (parseText format ["$%1",_bank]);
		_playeridc ctrlSetStructuredText (parseText format ["%1",_players]);

		_cashtitle ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.5'>Cash</t>"]);
		_banktitle ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.5'>Bank</t>"]);
		_playertitle ctrlSetStructuredText (parseText format ["<t font='TahomaB' size='0.5'>Players</t>"]);
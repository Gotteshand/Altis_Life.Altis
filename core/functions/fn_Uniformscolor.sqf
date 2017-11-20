/*
	Custom uniforms for
	Civilians, Medics and Cops

	Created by: Stanley / Invision
*/

#include "..\..\script_macros.hpp"

#define FETCH_CONST(var) (call var)
if(side player == independent) then {
	if ((uniform player) == "U_Rangemaster") then { player setObjectTextureGlobal [0, "textures\medic\medic_uniform.jpg"]; };
};
if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_medicLevel) == 4)) then {
		player setObjectTextureGlobal [0, "textures\feuerwehr\Uniform.paa"];
	   
}; 
if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_medicLevel) == 5)) then {
		player setObjectTextureGlobal [0, "textures\feuerwehr\Uniform.paa"];
	   
};
 if((backpack player) == "B_Carryall_cbr")  then {		
		(unitBackpack player) setObjectTextureGlobal [0, ""]; 
};

if(side player == west) then {
    if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 0)) then {
		player setObjectTextureGlobal [0, "textures\police\Streifenpolizist.paa"];
	   
	};
	
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 1)) then {
		player setObjectTextureGlobal [0, "textures\police\Streifenpolizist.paa"];
	   
	};   
	
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 2)) then {
		player setObjectTextureGlobal [0, "textures\police\Streifenpolizist.paa"];
	   
    };
	
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 3)) then {
		player setObjectTextureGlobal [0, "textures\police\Streifenpolizist.paa"];
	   
    };
	
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 4)) then {
		player setObjectTextureGlobal [0, "textures\police\Streifenpolizist.paa"];
	   
    };
	
	if (uniform player == "U_B_CombatUniform_mcam" && (FETCH_CONST(life_coplevel) == 5)) then {
		player setObjectTextureGlobal [0, "textures\police\sek_beamter.jpg"];
	   
    };
	
	if (uniform player == "U_B_CombatUniform_mcam" && (FETCH_CONST(life_coplevel) == 6)) then {
		player setObjectTextureGlobal [0, "textures\police\sek_beamter.jpg"];
	   
    };
	
	if (uniform player == "U_B_CombatUniform_mcam" && (FETCH_CONST(life_coplevel) == 7)) then {
		player setObjectTextureGlobal [0, "textures\police\sek_beamter.jpg"];
	   
    };
	
};
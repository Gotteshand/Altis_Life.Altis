#include "..\..\script_macros.hpp"
/*
 File: fn_craftCfg.sqf
 Author: EdgeKiller
 Description:
 Master configuration file for the crafting menu.
*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.
switch(_craft) do {
 case "weapon": {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["hgun_P07_F", ["diamond_cut",2,"copper_refined",1]],
 ["launch_RPG32_F", ["diamond_cut",4,"copper_refined",3,"metal_processed",15]], 
 ["RPG32_HE_F", ["diamond_cut",2,"ruby_refined",8,"metal_processed",15]]  
 ];
 if(FETCH_CONST(life_adminlevel) > 0) then {
 _return pushBack
 ["SMG_01_F", ["copper_refined",3,"iron_refined",3,"diamond_cut",1]];
 };
 };
 case "uniform": {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["U_IG_Guerilla1_1", ["copper_refined",1]], 
 ["U_O_GhillieSuit", ["copper_refined",7]],   
 ["U_B_T_FullGhillie_tna_F", ["copper_refined",18]],
 ["U_O_T_FullGhillie_tna_F", ["copper_refined",20]],
 ["U_B_CTRG_Soldier_urb_2_F", ["ruby_refined",10]],
 ["U_B_CTRG_Soldier_F", ["diamond_cut",10]],
 ["U_I_C_Soldier_Bandit_3_F", ["copper_refined",1]]  
 ];
 };
 case "backpack": {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["B_Bergen_tna_F", ["diamond_cut",8]] 
 ];
 };
 case "item": {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["iron_refined", ["copper_refined",2]],
 ["diamond_cut", ["copper_refined",1,"iron_refined",1]]
 ];
 };
};
_return;
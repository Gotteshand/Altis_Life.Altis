// Abfragen:


private["_bleedoutmsgshwn", "_dmg", "_dmgPerTick", "_timeToDeath", "_dmgTickSec", "_ticksToDeath"];



// Angaben:
_timeToDeath = (12 * 60);
_dmgTickSec = 5; // alle x Sekunden wird schaden Hinzugefügt in dem Fall alle 5 Sekunden
_ticksToDeath = _timeToDeath / _dmgTickSec;
_dmgPerTick = 0.76 / _ticksToDeath; // Absprungbasis 0.8, entspricht kleinerer verletzung
_bleedoutmsgshwn = false;



// Weitere Abfragen:


while{true} do
{
waitUntil { damage player > 0.5 && damage player < 1.0 && (independent countSide playableUnits >= 2) };
while{(alive player && damage player >0.5)} do {
life_max_health = 0.80;
_dmg = damage player;
if (_dmg > 0.76) then { player setDamage (_dmg + _dmgPerTick / 2); } // Kurz vor dem Sterben nimmt die Blutung etwas zu.
else {player setDamage (_dmg + _dmgPerTick); };


If (!_bleedoutmsgshwn) then
{
hint "Achtung! Sie scheinen zu verbluten! Gehen sie umgehend in ein Krankenhaus oder benutzen sie Schmerzmittel!";
_bleedoutmsgshwn = true;
};
if (_dmg >= 0.75) then { // Jetzt sieht man Verschwommen ...
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [2];
"dynamicBlur" ppEffectCommit 1;
};


sleep _dmgTickSec;
};
"dynamicBlur" ppEffectEnable false;
};
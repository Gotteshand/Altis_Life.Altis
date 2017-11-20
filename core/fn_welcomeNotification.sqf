disableSerialization;
[
        "",
        0,
        0.2,
        10,
        0,
        0,
        8
] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_fertiger_text = _display displayCtrl 1100;
_nachricht = "";
_nachricht = _nachricht + "<t align='center' size='8' shadow='0'><img image='textures\server\logo1.jpg' /></t><br /><br />";
_nachricht = _nachricht + "";
_nachricht = _nachricht + "Willkommen auf dem Altis Life Server <t color='#3298b5'>www.thegamecrew.de</t> <br />Unser Wert liegt auf ausdauerndes und gutes Roleplay!<br/>Lest euch deswegen die Regeln gut durch.<br /><br />";
_nachricht = _nachricht + "";
_nachricht = _nachricht + "Wir sind dabei das Leben auf Altis zu revolutionieren, mit vielen neuen Möglichkeiten...<br /><br />";
_nachricht = _nachricht + "<t align='center' size='8' shadow='0'><img image='textures\server\logo2.jpg' /></t><br /><br />";
_nachricht = _nachricht + "<t color='#3298b5'>Unsere Features:</t><br/>";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Einzigartiges Design<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Neue Farmmöglichkeiten<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> High FPS <br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Events<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Neue UI Designs<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> einzigartiges scripts<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> einzigartiges Marktsystem<br />";
_nachricht = _nachricht + "und vieles mehr...<br /><br />";

_nachricht = _nachricht + "<t color='#3298b5'>Unsere Server Daten:</t><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Unser TeamSpeak 3 Server: <a href='thegamecrew.nitrado.net:11050' color='#3298b5'>Join now</a><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Unsere Webseite: <a href='http://www.thegamecrew.de/' color='#3298b5'>Zur Webseite</a><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Unser Forum: <a href='http://www.thegamecrew.de/' color='#3298b5'>Berühre mich sanft!</a><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'><img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t> Unsere Server IP: kommt noch<br /><br />";

_nachricht = _nachricht + "<t color='#3298b5'>Euer TGC Team:</t><br />";
_nachricht = _nachricht + "<t color='#3298b5'>			Bereichsleiter/Admin:</t><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t color='#3298b5'>			Support-Leitung:</t><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t color='#3298b5'>			Supporter:</t><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t color='#3298b5'>			Event-Team:</t><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t color='#3298b5'>			Community-Manager:</t><br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "<t size='0.5' color='#3298b5'>			<img image='A3\Ui_f\data\IGUI\RscIngameUI\RscHint\indent_square' /></t>Hier eintragen<br />";
_nachricht = _nachricht + "Das <t color='#3298b5'>TGC</t> Team wünscht euch noch viel Spaß auf dem Server!<br /><br />";

_fertiger_text ctrlSetStructuredText (parseText _nachricht);
_positionText1 = ctrlPosition _fertiger_text;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _fertiger_text;
_fertiger_text ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_fertiger_text ctrlcommit 0;
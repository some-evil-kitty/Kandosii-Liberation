scriptName "building_defence_ai";

params ["_unit", ["_sector", ""]];

_unit setUnitPos "UP";
_unit disableAI "PATH";
    _handle = [{
        _this select 0 params ["_unit", ["_sector", ""]];
        private _ratio = 0.4;
        if !(_sector isEqualTo "") then {
        _ratio = [_sector] call KPLIB_fnc_getBluforRatio;
        };


        if (!(local _unit) OR !(alive _unit) OR (captive _unit) OR (_sector in blufor_sectors) or (_ratio > 0.35)) exitwith 
        {
            [_this select 1] call CBA_fnc_removePerFrameHandler;
            _unit enableAI "PATH";
            _unit setUnitPos "AUTO";
        };
        private _range = 40;

        private _ratio = 0.4;
        if !(_sector isEqualTo "") then {
        _ratio = [_sector] call KPLIB_fnc_getBluforRatio;
        };
         private _range = 40;
         private _target = assignedTarget _unit;
        if(!(isnull _target)) then {
            private _vd = (getPosASL _target) vectorDiff (getpos _unit);
            private _newdir = (_vd select 0) atan2 (_vd select 1);
            if (_newdir < 0) then {_dir = 360 + _newdir};
            _unit setdir (_newdir);
        };



        
        
        }, 5, [_unit,_sector]] call CBA_fnc_addPerFrameHandler;
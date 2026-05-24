///scr_save_slot_info(slot)
/*
**  Usage:
**      scr_save_slot_info(slot)
**
**  Given:
**      slot   1 = File A, 2 = File B, 3 = File C
**
**  Returns:
**      Info INI filename for that slot.
*/
switch (argument[0]) {
case 1: return "GMEAInfoA.ini";
case 2: return "GMEAInfoB.ini";
case 3: return "GMEAInfoC.ini";
}
return "";

///scr_save_slot_sav(slot)
/*
**  Usage:
**      scr_save_slot_sav(slot)
**
**  Given:
**      slot   1 = File A, 2 = File B, 3 = File C
**
**  Returns:
**      Save filename for that slot.
*/
switch (argument[0]) {
case 1: return "GMEASaveA.sav";
case 2: return "GMEASaveB.sav";
case 3: return "GMEASaveC.sav";
}
return "";

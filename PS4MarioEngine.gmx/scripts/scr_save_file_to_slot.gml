///scr_save_file_to_slot(fname)
/*
**  Usage:
**      scr_save_file_to_slot(fname)
**
**  Given:
**      fname   Save filename from scr_save_slot_sav
**
**  Returns:
**      Slot index 1–3, or 0 if unknown.
*/
if (argument[0] == "GMEASaveA.sav") return 1;
if (argument[0] == "GMEASaveB.sav") return 2;
if (argument[0] == "GMEASaveC.sav") return 3;
return 0;

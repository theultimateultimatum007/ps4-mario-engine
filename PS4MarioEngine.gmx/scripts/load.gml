///load(file)

/*
**  Usage:
**      load(file)
**
**  Given:
**      file    The location of the load file (bare filename).
**
**  Returns:
**      true on success, false if the file is missing or corrupt.
*/

if (argument[0] == "")
    return false;

if (!scr_save_exists(argument[0]))
    return false;

var path = scr_save_io_path(argument[0]);
var file = file_text_open_read(path);

if (file == -1 && scr_is_ps4() && path != argument[0])
    file = file_text_open_read(argument[0]);

if (file == -1)
    return false;

//Load the world map data structure
ds_map_read(global.mapscreen,file_text_read_string(file));
file_text_readln(file);

//Turn the star coin data structure into a string and write it
for (var i = 0; i < 3; i++) {

    ds_map_read(global.sc[i],file_text_read_string(file));
    file_text_readln(file);
}

//Current World
global.world = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Current Exits
ds_map_read(global.exits,file_text_read_string(file));
file_text_readln(file);

//Current Alt Exits
ds_map_read(global.exits2,file_text_read_string(file));
file_text_readln(file);

//Star Coins
global.starcoins = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Coins
global.coins = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Lives
lives = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Score
score = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Current Powerup
global.powerup = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Reserve Item
global.reserve = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Red Switch Palace
global.palacered = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Blue Switch Palace
global.palaceblue = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Yellow Switch Palace
global.palaceyellow = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Green Switch Palace
global.palacegreen = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Yoshi
global.mount = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Yoshi's Color
global.mountcolour = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Inventory Items
for (var i = 0; i < 13; i++) {

    global.inventory[i] = real(base64_decode(file_text_read_string(file)));
    file_text_readln(file);
}

//Game completion
global.gameclear = real(base64_decode(file_text_read_string(file)));
file_text_readln(file);

//Close the file
file_text_close(file);
return true;

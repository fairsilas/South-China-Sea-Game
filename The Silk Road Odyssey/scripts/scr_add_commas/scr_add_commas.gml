// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// Add Commas to Large Numbers
/// @param num The number to format
/// @return The formatted number as a string

function scr_add_commas(num){
    var numStr = string(num);
    var numLen = string_length(numStr);
    var formattedNum = "";
    
	add_comma = 0
    for (var i = numLen-1; i > 0; i--){
		formattedNum += numStr[i]
		if add_comma == 2
			add_comma = 0
			formattedNum += ","
		add_comma++
	}
    return formattedNum;
}
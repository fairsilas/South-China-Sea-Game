// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ds_list_find_title(list, targetTitle) {
    var itemCount = ds_list_size(list);

    for (var i = 0; i < itemCount; i++) {
        var currentItem = list[| i];
        if (currentItem.title == targetTitle) {
            return i; // Return the index if the title matches
        }
    }

    return -1; // Return -1 if the title is not found
}

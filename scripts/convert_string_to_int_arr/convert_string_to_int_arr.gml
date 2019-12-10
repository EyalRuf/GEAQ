/// convert_string_to_int_list(str :string)
/// @param str String to convert into an list

var s = argument[0], d = ", ";
var rl = ds_list_create();
var p = string_pos(d, s);
var dl = string_length(d);
if (dl) while (p) {
    p -= 1;
    ds_list_add(rl, string_copy(s, 1, p));
    s = string_delete(s, 1, p + dl);
    p = string_pos(d, s);
}
ds_list_add(rl, s);
// create an array and store results:
var rn = ds_list_size(rl), rw;
if (os_browser != browser_not_a_browser) {
    rw[0] = rl[|0]; // initial allocation
    for (p = 1; p < rn; p++) rw[p] = parseInt(rl[|p]);
} else {
    p = rn; while (--p >= 0) rw[p] = parseInt(rl[|p]);
}
return rw;
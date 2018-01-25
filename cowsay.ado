program define cowsay

version 12.1

syntax anything, [pig]

gettoken arg1 : anything

local arg1_len = strlen("`arg1'")
local arg1_len = `arg1_len'+2

* Default: ASCII cow
if "`pig'"=="" {
	di as text " "
	di "   {hline `arg1_len'}"
	di "  < `arg1' >"
	di "   {hline `arg1_len'}"
	di "         \   ^__^"
	di "          \  (oo)\_______"
	di "             (__)\       )\/\"
	di "                 ||----w |"
	di "                 ||     ||"
}

* If pig option specified: ASCII pig
if "`pig'"!="" {
	di "  {hline `arg1_len'}"
	di " < `arg1' >"
	di "  {hline `arg1_len'}"
	di "    \                                    _"
	di "     \          _   _    __....._     _ '-)-'"
	di "      \        |_\_/ | .'        '.  '-)-'"
	di "       \      /      \/            \-'`"
	di "        \   _| 6 6    `             |"
	di "         \ /..\                     |"
	di "           \__/_,          |       /"
	di "             '--.___   \    \     \"
	di "                 / /  /`----`;-.   >"
	di "                / /  /       / /  /"
	di "               /_/__/       /_/__/"
}


end

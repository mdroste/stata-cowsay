program define cowsay

version 12.1

syntax anything, [animal(string asis)]

gettoken arg1 : anything

local arg1_len = strlen("`arg1'")
local arg1_len = `arg1_len'+2

* Error handling: only animals supported are cow, pig, benny
if ~inlist("`animal'","cow","pig","benny") {
	di as error "CRITICAL COWSAY ERROR: animal chosen (`animal') is not in the menagerie."
	di as error "Currently supported animals: cow, pig, benny"
	di as error "Defaulting to cow."
	local animal cow
}

* Error handling: if animal not specified, set it to cow
if "`animal'"=="" local animal cow

* Default: ASCII cow
if "`animal'"=="cow" {
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
if "`animal'"=="pig" {
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

* Benny
if "`animal'"=="benny" {
	di "  {hline `arg1_len'}"
	di " < `arg1' >"
	di "  {hline `arg1_len'}"
	di "	\"
	di "     \              .-'||'-."
	di "      \           .'   ||   '."
	di "       \         /   __||__   \"
	di "                 | / -    - \ |"
	di "                 | | 6    6 | |"
	di "                 \/\____7___/\/"
	di "         .--------:\:I:II:I:/;--------."
	di "        /          \ :I::I: /          \"
	di "       |            '------'            |"
	di "       |             \____/             |"
	di "       |      ,    __     ___    ,      |"
	di "       |======|   /  |   / _ \   |======|"
	di "       |======|   ^| |  | | | |  |======|"
	di "       |~~~~~|     | |  | |_| |   |~~~~~|"
	di "       |     |\   [___]  \___/   /|     |"
	di "        \    \|                  |/    /"
	di "         \    \  _ _.-=''=-._ _  /    /'"
	di "          '\   ' _)\\-++++-//(_ '   /'"
	di "            ;   (__||      ||__)   ;"
	di "             ;   ___\      /___   ;"
	di "              '. ---/-=..=-\--- .'"
	di "                `''          '' "
}


end

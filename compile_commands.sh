make clean
make libpython3.6m.a --dry-run -i \
 | grep -wE 'ppu-lv2-gcc|ppu-lv2-g++' \
 | jq -nR '[inputs|{directory:".", command:., file: match(" [^ ]+$").string[1:]}]' \
 > compile_commands.json

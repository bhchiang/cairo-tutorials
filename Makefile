%: %.cairo
	cairo-compile $< --output $@_compiled.json 
	cairo-run \
		--program=$@_compiled.json --print_output \
		--print_info --relocate_prints --layout=small 
	

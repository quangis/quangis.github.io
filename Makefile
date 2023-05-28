index.html: README.md
	lowdown -s -o "$@" "$<"

wfgen/index.html: wfgen/*.ttl
	cd wfgen; tree -H . -L 1 --noreport --charset utf-8 -P "*.ttl" -o index.html

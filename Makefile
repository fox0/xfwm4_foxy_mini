active_color=\#00aa00
inactive_color=\#00aaaa

title_height=15
title_color=\#222222

all: xfwm4/bottom-active.png xfwm4/bottom-inactive.png xfwm4/left-active.png xfwm4/left-inactive.png xfwm4/right-active.png xfwm4/right-inactive.png xfwm4/title-1-active.png xfwm4/title-2-active.png xfwm4/title-3-active.png xfwm4/title-4-active.png xfwm4/title-5-active.png xfwm4/title-1-inactive.png xfwm4/title-2-inactive.png xfwm4/title-3-inactive.png xfwm4/title-4-inactive.png xfwm4/title-5-inactive.png

xfwm4/bottom-active.png:
	convert -size 20x1 xc:$(active_color) $@

xfwm4/bottom-inactive.png:
	convert -size 20x1 xc:$(inactive_color) $@

xfwm4/left-active.png:
	convert -size 1x20 xc:$(active_color) $@

xfwm4/left-inactive.png:
	convert -size 1x20 xc:$(inactive_color) $@

xfwm4/right-active.png:
	convert -size 1x20 xc:$(active_color) $@

xfwm4/right-inactive.png:
	convert -size 1x20 xc:$(inactive_color) $@

xfwm4/title-%.png:
	convert -size 1x$(title_height) xc:$(title_color) $@

install: all ~/.themes/foxy-mini
	cp -r xfwm4 ~/.themes/foxy-mini/

~/.themes/foxy-mini:
	mkdir -p $@

uninstall:
	rm -rf ~/.themes/foxy-mini/

clean:
	rm -f xfwm4/bottom-active.png xfwm4/bottom-inactive.png xfwm4/left-active.png xfwm4/left-inactive.png xfwm4/right-active.png xfwm4/right-inactive.png xfwm4/title-*

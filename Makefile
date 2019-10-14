active_color=\#00aa00
inactive_color=\#00aaaa

title_height=15
title_color=\#222222

all: xfwm4/bottom-active.png xfwm4/bottom-inactive.png xfwm4/left-active.png xfwm4/left-inactive.png xfwm4/right-active.png xfwm4/right-inactive.png xfwm4/title-1-active.png xfwm4/title-2-active.png xfwm4/title-3-active.png xfwm4/title-4-active.png xfwm4/title-5-active.png xfwm4/title-1-inactive.png xfwm4/title-2-inactive.png xfwm4/title-3-inactive.png xfwm4/title-4-inactive.png xfwm4/title-5-inactive.png xfwm4/close-active.png xfwm4/close-inactive.png xfwm4/close-prelight.png xfwm4/close-pressed.png xfwm4/hide-active.png xfwm4/hide-inactive.png xfwm4/hide-prelight.png xfwm4/hide-pressed.png xfwm4/maximize-active.png xfwm4/maximize-inactive.png xfwm4/maximize-prelight.png xfwm4/maximize-pressed.png xfwm4/stick-active.png xfwm4/stick-inactive.png xfwm4/stick-prelight.png xfwm4/stick-pressed.png xfwm4/maximize-toggled-active.png xfwm4/maximize-toggled-inactive.png  xfwm4/stick-toggled-active.png xfwm4/stick-toggled-inactive.png 

clean:
	rm -f xfwm4/*.png

install: all ~/.themes/foxy-mini
	cp -r xfwm4 ~/.themes/foxy-mini/

~/.themes/foxy-mini:
	mkdir -p $@

uninstall:
	rm -rf ~/.themes/foxy-mini/

# borders

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

# buttons

xfwm4/close-active.png:
	convert -size 15x15 xc:#aa0000 $@

xfwm4/close-inactive.png:
	convert -size 15x15 xc:#6f0000 $@

xfwm4/close-prelight.png:
	convert -size 15x15 xc:#ff0000 $@

xfwm4/close-pressed.png:
	convert -size 15x15 xc:#ffffff $@

xfwm4/maximize-toggled-%.png:
	convert -size 15x15 xc:#aaffaa $@

xfwm4/stick-toggled-%.png:
	convert -size 15x15 xc:#aaffaa $@

xfwm4/%-active.png:
	convert -size 15x15 xc:#999999 $@

xfwm4/%-prelight.png:
	convert -size 15x15 xc:#aaffaa $@

xfwm4/%-inactive.png:
	convert -size 15x15 xc:#777777 $@

xfwm4/%-pressed.png:
	convert -size 15x15 xc:#ffffff $@

# title

xfwm4/title-%-active.png:
	convert -size 1x$(title_height) xc:$(title_color) $@

xfwm4/title-%-inactive.png:
	convert -size 1x$(title_height) xc:$(title_color) $@

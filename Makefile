active_color=\#00aa00
inactive_color=\#00aaaa

title_height=14
button_width=25

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
	convert -size $(button_width)x$(title_height) xc:#6f0000 $@

xfwm4/close-inactive.png:
	convert -size $(button_width)x$(title_height) xc:#3f0000 $@


xfwm4/close-prelight.png:
	convert -size $(button_width)x$(title_height) xc:#ff0000 $@

xfwm4/maximize-prelight.png:
	convert -size $(button_width)x$(title_height) xc:#ffffaa $@

xfwm4/hide-prelight.png:
	convert -size $(button_width)x$(title_height) xc:#aaffaa $@

xfwm4/stick-prelight.png:
	convert -size $(button_width)x$(title_height) xc:#aaffff $@


xfwm4/maximize-toggled-active.png:
	convert -size $(button_width)x$(title_height) xc:#6f6f00 $@

xfwm4/maximize-toggled-inactive.png:
	convert -size $(button_width)x$(title_height) xc:#3f3f00 $@

xfwm4/stick-toggled-active.png:
	convert -size $(button_width)x$(title_height) xc:#006f6f $@

xfwm4/stick-toggled-inactive.png:
	convert -size $(button_width)x$(title_height) xc:#003f3f $@


xfwm4/%-active.png:
	convert -size $(button_width)x$(title_height) xc:#6f6f6f $@

xfwm4/%-inactive.png:
	convert -size $(button_width)x$(title_height) xc:#3f3f3f $@

xfwm4/%-pressed.png:
	convert -size $(button_width)x$(title_height) xc:#ffffff $@

# title

xfwm4/title-%-active.png:
	convert -size 1x$(title_height) xc:#333333 $@

xfwm4/title-%-inactive.png:
	convert -size 1x$(title_height) xc:#222222 $@

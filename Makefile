all: htdocs/alpha.png
	rsync \
		--recursive \
		--links \
		--update \
		--delete-after \
		--times \
		--compress \
		htdocs/* \
		hhsw.de@ssh.strato.de:sites/NineLives

htdocs/alpha.png: gfx/atlas.xcf
	convert htdocs/atlas.png \( +clone -alpha Extract \) \
		-channel RGB \
		-compose Multiply \
		-composite htdocs/atlas.png

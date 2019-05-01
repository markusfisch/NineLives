all: premultiply
	rsync \
		--recursive \
		--links \
		--update \
		--delete-after \
		--times \
		--compress \
		htdocs/* \
		hhsw.de@ssh.strato.de:sites/NineLives

premultiply:
	convert htdocs/atlas.png \( +clone -alpha Extract \) \
		-channel RGB \
		-compose Multiply \
		-composite htdocs/atlas.png

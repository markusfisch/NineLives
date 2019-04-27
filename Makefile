all:
	rsync \
		--recursive \
		--links \
		--update \
		--delete-after \
		--times \
		--compress \
		htdocs/* \
		hhsw.de@ssh.strato.de:sites/proto/ld44

build:
	docker build -t jupyter_octave ./build_context

run:
	docker run --rm \
		-p 8888:8888 \
		-v $$PWD/work:/home/jovyan/work \
		-u $$(id -u):$$(id -g) \
		jupyter_octave

bash:
	docker run --rm -it \
		-p 8888:8888 \
		-v $$PWD/work:/home/jovyan/work \
		-u $$(id -u):$$(id -g) \
		jupyter_octave \
		bash
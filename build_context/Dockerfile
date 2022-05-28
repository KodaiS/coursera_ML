FROM jupyter/base-notebook

USER root
RUN apt-get -y update && apt-get -y upgrade && \
    apt-get -y install gnuplot octave && \
    apt-get -y clean
RUN apt-get -y install liboctave-dev

USER jovyan
RUN pip install --upgrade pip && \
    pip install octave_kernel
RUN echo "graphics_toolkit('gnuplot');" > ".octaverc"
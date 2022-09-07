FROM emscripten/emsdk:2.0.8
COPY . /src
WORKDIR /src

# TODO: take this from a build arg
ENV FFMPEG_ST no

RUN bash -c "./build.sh"
# RUN bash -c "./build.sh build-ffmpeg"

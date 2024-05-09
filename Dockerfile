# build
FROM alpine:3.17.0 AS build
RUN apk update && \
    apk add --no-cache \
    build-base=0.5-r3 \
    cmake=3.24.4-r0 

WORKDIR /http_server

COPY rarlibc/ ./rarlibc
COPY src/ ./src
COPY CMakeLists.txt .

RUN cmake -B ./build -S .

# runner
# FROM alpine:3.17.0

# RUN apk update && \
#     apk add --no-cache \
#     libstdc++=12.2.1_git20220924-r4

# RUN addgroup -S shs && adduser -S shs -G shs
# USER shs

# COPY --chown=shs:shs --from=build \
#     ./http_server/build/src/http_server \
#     ./app/
# ENTRYPOINT [ "./app/http_server" ]
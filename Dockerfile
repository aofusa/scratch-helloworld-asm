FROM gcc:12-bullseye AS builder
WORKDIR /app
COPY . /app
RUN as -o hello-world.o hello-world.s && ld -o hello-world hello-world.o

FROM scratch
COPY --from=builder /app/hello-world /hello-world
CMD ["/hello-world"]


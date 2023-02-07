Scratch Hello World Asm
=====

scratchコンテナで動作するHello Worldをアセンブラで作成する

ビルドと実行
-----
```sh
docker build -t dev.local/hello-world-asm:latest .

docker run dev.local/hello-world-asm
```

参考
-----
[hello-worldコンテナ](https://hub.docker.com/_/hello-world)
[システムコールでHelloWorld](https://zenn.dev/tminamiii/articles/aeb62a0b292da7)

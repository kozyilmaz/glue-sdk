# glue-sdk
Work-in-progress Bitcoin (and some more) SDK for Linux, macOS and iOS (`x86_64` and `ios64`)

## iOS
```sh
$ source environment.ios64
$ make all
# for debugging
$ PRINT_DEBUG=y make all
```
Output directory will be `$PROJECT_DIR/rootfs/ios64`

## iOS Simulator
```sh
$ source environment.iossim
$ make all
# for debugging
$ PRINT_DEBUG=y make all
```
Output directory will be `$PROJECT_DIR/rootfs/iossim`

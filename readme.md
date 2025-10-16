# intro

[youtube Zig Build System](https://www.youtube.com/watch?v=wFlyUzUVFhw), more about build systems  and obtaining sw in general

[The Road to Zig 1.0](https://www.youtube.com/watch?v=Gv2I7qTux7g)

[doc as a onpager](https://ziglang.org/documentation/0.15.1/)

[doc std lib](https://ziglang.org/documentation/0.15.1/std/)

## build system

### basic build flow

```bash
cd 00_hello
# init project, will create a standard build flow
zig init

# executable
zig build-exe main.zig
# build and run
zig run main.zig
```


### simple custom build flow

```bash
cd 01_simple_exe

# create you build.zip and run with
zig build --summary all

# add the run step and run with
zig build run --summary all

# add add standard config option like build mode
# https://ziglang.org/documentation/0.15.1/#toc-Build-Mode
zig build --summary all -Doptimize=Debug
zig build --summary all -Doptimize=ReleaseSmall
zig build --summary all -Doptimize=ReleaseFast
# runtime safetycheck, crash instead of undefined behaviour
zig build --summary all -Doptimize=ReleaseSafe  

ll zig-out/bin/
```


### custom option

```bash
cd 02_custom_option

zig build -Dversion=1.2.3 --summary all

zig build -h 
# Project-Specific Options:
#  -Dversion=[string]           application version string
```


### static lib

```bash
cd 03_static_lib

# build lib
zig build --summary all

# build demo app
zig build -Denable-demo --summary all
./zig-out/bin/demo
```


### dynamic lib

same same


### Fazit build system

- IMO Lesbarer als cmake, weil Programiersprache
- [Offizielles Manual](https://ziglang.org/learn/build-system/) schon outdated (Syntax)
- 


Sprache zielt darauf ein besseres C zu sein...
Sprache ist schon ein paar Jahre da, scheint aber nicht recht vom Fleck zu kommen.


## use zig, with c/c++

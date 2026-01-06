# AoC2025

As usual, I'm attempting the problems in this year's Advent of Code. No AI other than general guidance to help me around unknowns of the language I've chosen.

This year I'm trying to use [Ada](https://en.wikipedia.org/wiki/Ada_(programming_language)).

My programming environment is also a little different to usual - I'm attempting to use Visual Studio Code on Windows, with a WSL terminal for running the code.

# Build Environment

On Ubuntu:

```
apt-get update
apt-get install gnat gprbuild make
```

Compiling:

```
make
```

Running:

```
./main -d <DAY> [-t]
```

`-t` runs with test input instead of the personalised input data for me.

>This project is a work in progress and everything contained within this readme are notes for the developers.

The names of the files for an NES game typically depend on the development environment and tools you are using. However, here are the common files that you might have for an NES game:

1. **Main Source Code File**: This is the main source code file where you write the assembly code for your game. It could be named something like `main.asm` or `game.asm`.

2. **iNES Header File**: This file contains the configuration information for the game's iNES header, as mentioned earlier. It could be named something like `header.cfg` or `ines_header.asm`.

3. **Initialization Code File**: This file contains the initialization code for setting up the game and the console. It could be named something like `init.asm` or `setup.asm`.

4. **Title Screen Code File**: This file contains the code specific to the title screen, including rendering the title image and handling menu selection. It could be named something like `title.asm` or `title_screen.asm`.

5. **One Player Mode Code File**: This file contains the code specific to the one player mode, including player movement, shooting mechanics, enemy behavior, and level generation. It could be named something like `one_player.asm` or `single_player.asm`.

6. **Co-op Mode Code File**: This file contains the code specific to the co-op mode, including controls and rendering for two players, shared lives, and cooperative gameplay. It could be named something like `co_op.asm` or `multiplayer.asm`.

7. **Versus Mode Code File**: This file contains the code specific to the versus mode, including controls and rendering for two players in a competitive gameplay scenario. It could be named something like `versus.asm` or `multiplayer_versus.asm`.

8. **CHR-ROM Graphics Data File**: This file contains the graphics data for the game's characters, tiles, and sprites. It could be named something like `graphics.chr` or `sprites.chr`.

9. **Build Script**: This file is used to automate the compilation and building of your game. It may include instructions to assemble the source code, concatenate the different sections, and generate the final ROM file. The name of this file could vary, such as `build.sh`, `makefile`, or `build.bat`, depending on the development environment and tools you are using.

These are just example file names, and you can choose any names that make sense for your project. It's important to maintain a consistent naming convention and organization to keep your project manageable and maintainable.






RESOURCES:
https://www.nesdev.org/wiki/Nesdev_Wiki
https://cppchriscpp.github.io/nes-starter-kit//guide/section_1/setting_up_your_tools.html




PROJECT TREES:
- project/
  |- build/
  |  |- build.sh
  |
  |- assets/
  |  |- graphics/
  |  |  |- title_screen.chr
  |  |  |- player.chr
  |  |  |- enemy.chr
  |  |
  |  |- audio/
  |     |- music.nsf
  |     |- shot.nsf
  |
  |- src/
  |  |- init.asm
  |  |- main.asm
  |  |- title_screen.asm
  |  |- co-op_mode.asm
  |  |- versus_mode.asm
  |  |- one_player_mode.asm
  |  |- nes.inc
  |  |- ines-header.asm
  |
  |- header.cfg
  |- readme.md

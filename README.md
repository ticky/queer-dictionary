# Dictionary of Queer Terms

An OS X dictionary providing more correct definitions of terms in use in the Queer/LGBTQI community.

## Installation

Currently, no pre-built versions of the dictionary are available, but I plan to make them available shortly. Please follow the build instructions below.

## Building

Building the Dictionary requires the OS X Dictionary Development Kit, available [from Apple's Developer site](https://developer.apple.com/downloads/index.action) on the "Auxiliary Tools for Xcode" disk image.

The build process expects the development kit to be in the default location it appears when the disk image is mounted. Edit the `DICT_BUILD_TOOL_DIR` in `Makefile` if you have it installed somewhere different.

Building is as simple as running `make && make install` if you have Xcode's command line tools installed. The Dictionary will be installed to `~/Library/Dictionaries` and you can immediately use it by opening the Dictionary app.

## Corrections & Contributions

Please feel free to open issues or merge requests contributing corrections and other improvements to the dictionary. I make no claim that this dictionary will be accurate, tactful or encompass uses of terms outside of my own personal understanding, and the sources I have drawn on to compile it, and I hope that you can improve my understanding by contributing.

## License

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/.

#!/usr/bin/env python3

import ctypes
import pathlib

def rel_lib(name):
	libname = pathlib.Path().absolute() / f"{name}.so"
	lib = ctypes.CDLL(libname)
	return lib


libdummy = rel_lib("libdummy")


def main() -> None:
	print("Calling no_trap")
	libdummy.no_trap()
	print("Calling yes_trap")
	libdummy.yes_trap()
	print("Done")


if __name__ == '__main__':
	main()

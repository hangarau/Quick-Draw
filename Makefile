# A simple Makefile template

# This is designed to run on Linux, with g++ installed
# Compiles C++ at literally the highest possible level

# Assumptions made:
#	The file name is "Main.cpp"
#	Your file structure is thus:

# root/
#	dist/
#		linux/
#			project_name.out
#		any_other_operating_systems_you_want/
#	src/
#		Main.cpp
#	Makefile
#
# I use this because it's my favourite :)

all: compile

compile:
	g++ -pedantic -Wall -Wextra -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wmissing-include-dirs -Wnoexcept -Woverloaded-virtual -Wredundant-decls -Wshadow -Wstrict-null-sentinel -Wstrict-overflow=5 -Wundef -Werror -O2 src/Main.cpp -o dist/linux/project_name.out

run: 
	./dist/linux/project_name.out

CPPFLAGS = -Wextra -Wall -Werror -std=c++20 -fno-rtti -fno-exceptions -march=native -funroll-loops -Wstrict-overflow -Wstrict-aliasing -Wshadow -Wformat=2 -Wnull-dereference -Wdouble-promotion -fdeclspec -fms-extensions -Wno-c99-designator -Wno-deprecated-volatile -Wno-reorder-init-list -fno-omit-frame-pointer -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function
TEMP := $(CPPFLAGS)
ODIR = out/debug/db
SDIR = src
INCFLAGS = -Iinclude
CXX = clang++-12
NAME = db
_OBJ = bug.o \
	transaltion_unit_1.o \
	transaltion_unit_2.o \

_SPECIAL_OBJ = 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))
SPECIAL_OBJ = $(patsubst %,$(ODIR)/%,$(_SPECIAL_OBJ))

all: $(ODIR) $(NAME)

$(NAME): $(OBJ)
	$(CXX) -o $(NAME) $(OBJ) $(SPECIAL_OBJ) $(LIBFLAG) $(RPATH)

$(ODIR)/%.o: $(SDIR)/%.cpp
	$(shell mkdir -p $(@D))
	$(CXX) -c -o $@ $< $(INCFLAGS) $(CPPFLAGS)

$(ODIR)/%.o: $(SDIR)/%.S
	$(shell mkdir -p $(@D))
	$(CXX) -c -o $@ $<

$(ODIR):
	mkdir -p $(ODIR)
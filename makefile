ODIR = out/debug/demo_bug
SDIR = src
CXX = clang++-12
NAME = demo_bug
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
	$(CXX) -c -o $@ $< -Iinclude

$(ODIR)/%.o: $(SDIR)/%.S
	$(shell mkdir -p $(@D))
	$(CXX) -c -o $@ $<

$(ODIR):
	mkdir -p $(ODIR)
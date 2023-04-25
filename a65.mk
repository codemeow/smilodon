OBJECTS = $(SOURCES:%.a65=../../$(DIR_OBJECT)/%.o)

../../$(DIR_OBJECT)/%.o: %.a65
	$(CA65) $< --include-dir $(DIR_INCLUDE) --bin-include-dir $(DIR_INCLUDE) -o $@

all: $(OBJECTS)

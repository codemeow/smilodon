ifndef CUSTOM_CA65
	CA65    := ca65
else
	CA65    := $(CUSTOM_CA65)
endif


DIR_CODE    := code
DIR_OBJECT  := object
DIR_INCLUDE := include

export

.PHONY:	all clean

all: prepare
	@$(MAKE) --directory=$(DIR_CODE) $@

prepare:
	mkdir -p $(DIR_OBJECT)

clean:
	rm -rf $(DIR_OBJECT)
	

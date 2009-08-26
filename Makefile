HC= ghc
HCFLAGS= -O2

%.so: %.hs
        $(HC) $(HCFLAGS) --make \
                -no-hs-main -optl '-shared' -optc '-DMODULE='$(*F) \
                -o $@ $< module_init.c


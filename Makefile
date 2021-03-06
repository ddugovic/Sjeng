LDFLAGS=-lm
CFLAGS=-DNO_LEARN=1
EXE=sjeng

OBJS = attacks.o book.o draw.o epd.o learn.o moves.o newbook.o probe.o \
	rcfile.o see.o seval.o ttable.o crazy.o ecache.o eval.o leval.o \
	neval.o partner.o proof.o search.o segtb.o sjeng.o utils.o

$(EXE): .depend $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(EXE) $(OBJS)

.depend:
	$(CC) $(DEPENDFLAGS) -MM $(OBJS:.o=.c) > $@

-include .depend

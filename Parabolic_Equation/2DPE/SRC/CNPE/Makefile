# Modified by Anton Shterenlikht

FC=		gfortran-mp-5
FCFLAGS=	-g -fbacktrace -Wall -fcheck=all
#LDFLAGS=	-Wl,-rpath="/usr/local/lib/gcc" -L$(HOME)/lib -lslatec \
		-lslatec -llapack -lsparseblas -lblas

LDFLAGS=	-lslatec -llapack -lblas

MOD_DIR=	../MODULES/
MOD_SRC=	$(addprefix $(MOD_DIR), PE2D_TYPE.f03 PE2D_VAR.f03 PE2D_GROUND.f03 PE2D_ATMOS.f03 PE2D_AUX.f03)
MOD_MOD=	$(MOD_SRC:.f03=.mod)
MOD_OBJ=	$(MOD_SRC:.f03=.o)
CLEAN+=		$(MOD_MOD) $(MOD_OBJ)

PROG1_SRC=	CNPE2_HT.f03
PROG1_OBJ=	$(PROG1_SRC:.f03=.o)
PROG1_EXE=	$(PROG1_SRC:.f03=.x)
CLEAN+=		$(PROG1_OBJ) $(PROG1_EXE)

PROG2_SRC=	CNPE2_HF.f03
PROG2_OBJ=	$(PROG2_SRC:.f03=.o)
PROG2_EXE=	$(PROG2_SRC:.f03=.x)
CLEAN+=		$(PROG2_OBJ) $(PROG2_EXE)

PROG3_SRC=	CNPE2_HT_SNT.f03
PROG3_OBJ=	$(PROG3_SRC:.f03=.o)
PROG3_EXE=	$(PROG3_SRC:.f03=.x)
CLEAN+=		$(PROG3_OBJ) $(PROG3_EXE)

PROG4_SRC=      CNPE2_HT_ALPS.f03
PROG4_OBJ=      $(PROG4_SRC:.f03=.o)
PROG4_EXE=      $(PROG4_SRC:.f03=.x)
CLEAN+=		$(PROG4_OBJ) $(PROG4_EXE)

PROG5_SRC=      CNPE2_HT_VAL.f03
PROG5_OBJ=      $(PROG5_SRC:.f03=.o)
PROG5_EXE=      $(PROG5_SRC:.f03=.x)
CLEAN+=         $(PROG5_OBJ) $(PROG5_EXE)

.SUFFIXES:	.f03 .mod .o

all:									$(PROG1_EXE) $(PROG2_EXE) $(PROG3_EXE) $(PROG4_EXE)
$(MOD_MOD) $(MOD_OBJ):							$(MOD_SRC)
$(PROG1_OBJ) $(PROG2_OBJ) $(PROG3_OBJ) $(PROG4_OBJ) $(PROG5_OBJ): 	$(MOD_MOD)
%.o:									%.mod

.f03.mod:
	$(FC) -c $(FFLAGS) $< -o $@
	touch $@

.f03.o:
	$(FC) -c $(FFLAGS) $< -o $@

$(PROG1_EXE):	$(PROG1_OBJ) $(MOD_OBJ)
	$(FC) -o $@ $(FFLAGS) $(PROG1_OBJ) $(MOD_OBJ) $(LDFLAGS)

$(PROG2_EXE):	$(PROG2_OBJ) $(MOD_OBJ)
	$(FC) -o $@ $(FFLAGS) $(PROG2_OBJ) $(MOD_OBJ) $(LDFLAGS)

$(PROG3_EXE):	$(PROG3_OBJ) $(MOD_OBJ)
	$(FC) -o $@ $(FFLAGS) $(PROG3_OBJ) $(MOD_OBJ) $(LDFLAGS)

$(PROG4_EXE):   $(PROG4_OBJ) $(MOD_OBJ)
	$(FC) -o $@ $(FFLAGS) $(PROG4_OBJ) $(MOD_OBJ) $(LDFLAGS)

$(PROG5_EXE):	$(PROG5_OBJ) $(MOD_OBJ)
	$(FC) -o $@ $(FFLAGS) $(PROG5_OBJ) $(MOD_OBJ) $(LDFLAGS)

clean :
	rm $(CLEAN);
	rm *.mod

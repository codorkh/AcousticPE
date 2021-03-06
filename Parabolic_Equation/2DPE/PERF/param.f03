MODULE PARAM
	USE NRTYPE
	IMPLICIT NONE
	!-----------------------------------------------------------
	COMPLEX(DP), PARAMETER :: im = (0,1)
	INTEGER :: N, M, NS, NABL, NZ, MX, NELT, ITER, KU, KL, NDIAG, NN
	INTEGER, ALLOCATABLE, DIMENSION(:) :: IMAT, JMAT, IJA
	REAL(DP) :: C0, L, H, HABL, F, ZS, ABL, K0, lmbda0, Dz, Dr, A0, A2, B, TI, TF, THRESH, ERR
	REAL(DP), ALLOCATABLE, DIMENSION(:) :: LPG, LPG2
	REAL(DP), ALLOCATABLE, DIMENSION(:,:) :: LP, LP2
	REAL(DP) :: H0, X0, S, XL, XR, ANGLE, THETA
	REAL(DP), ALLOCATABLE, DIMENSION(:) :: LIN, TERR, TERR1, TERR2
	COMPLEX(DP) :: ALPHA, P0, TAU1, TAU2, SIGMA1, SIGMA2, IMP, R
	COMPLEX(DP), ALLOCATABLE, DIMENSION(:) :: ALT, C, K, DK2, VALMAT, TEMP
	COMPLEX(DP), ALLOCATABLE, DIMENSION(:,:) :: PHI, P, T, D, M1, M2, MAT, I, E
	TYPE(SPRS2_DP), SAVE :: SPMAT, SP1, SP2
	!-----------------------------------------------------------
END MODULE PARAM

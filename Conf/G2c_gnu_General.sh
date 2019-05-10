# *** manually set environments (for gnu compiler) of g2c ***

# !!! module environment (*THEIA*) !!!
 module load gcc/6.2.0

 ANCHORDIR=..
 export COMP=gnu
 export G2C_VER=v1.6.0
 export G2C_SRC=
 export G2C_LIB4=$ANCHORDIR/libg2c_${G2C_VER}_4.a

#JPZlib=/nwprod2/lib                                #WCOSS
 JPZlib=/scratch3/NCEPDEV/nwprod/lib                #THEIA
 export JASPER_VER=v1.900.1
 export JASPER_INC=$JPZlib/jasper/v1.900.1/include
 export PNG_VER=v1.2.44
#export PNG_INC=$JPZlib/png/v1.2.44/include         #WCOSS
 export PNG_INC=$JPZlib/png/v1.2.44/src/include     #THEIA
 export Z_VER=v1.2.6
 export Z_INC=$JPZlib/z/v1.2.6/include

 export CC=gcc
 export FC=gfortran
 export CPP=cpp
 export OMPCC="$CC -fopenmp"
 export OMPFC="$FC -fopenmp"
 export MPICC=mpigcc
 export MPIFC=mpigfortran

 export DEBUG="-g -O0"
 export CFLAGS="-O3 -fPIC"
 export FFLAGS="-O3 -fPIC"
 export FREEFORM="-ffree-form"
 export FPPCPP="-cpp"
 export CPPFLAGS="-P -traditional-cpp"
 export MPICFLAGS="-O3 -fPIC"
 export MPIFFLAGS="-O3 -fPIC"
 export MODPATH="-J"
 export I4R4=""
 export I4R8="-fdefault-real-8"
 export I8R8="-fdefault-integer-8 -fdefault-real-8"

 export CPPDEFS=""
 export CFLAGSDEFS="-I${PNG_INC} -I${JASPER_INC} -I${Z_INC} -DUNDERSCORE -DLINUX -DUSE_JPEG2000 -DUSE_PNG -D__64BIT__"
 export FFLAGSDEFS="-fno-range-check"

 export USECC="YES"
 export USEFC=""
 export DEPS="JASPER $JASPER_VER, LIBPNG $PNG_VER, ZLIB $Z_VER"
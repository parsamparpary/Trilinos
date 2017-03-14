#!/bin/bash
rm -rf CMakeCache.txt CMakeFiles
cmake \
-D CMAKE_INSTALL_PREFIX="/home/rppawlo/JUNK" \
-D Trilinos_ENABLE_DEBUG=OFF \
-D Trilinos_ENABLE_ALL_PACKAGES:BOOL=OFF \
-D Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES:BOOL=OFF \
-D Trilinos_ENABLE_EXAMPLES:BOOL=OFF \
-D Trilinos_ENABLE_TESTS:BOOL=OFF \
-D Trilinos_ENABLE_Tempus:BOOL=ON \
-D Tempus_ENABLE_TESTS:BOOL=ON \
-D Tempus_ENABLE_EXAMPLES:BOOL=ON \
-D TPL_ENABLE_MPI:BOOL=ON \
-D MPI_BASE_DIR:PATH="$ROGER_MPICH_BASE_PATH" \
-D TPL_ENABLE_HWLOC:BOOL=ON \
-D HWLOC_INCLUDE_DIRS:FILEPATH="$ROGER_HWLOC_INCLUDE_PATH" \
-D HWLOC_LIBRARY_DIRS:FILEPATH="$ROGER_HWLOC_LIBRARY_PATH" \
-D TPL_BLAS_LIBRARIES:PATH="$ROGER_BLAS_LIBRARY" \
-D TPL_LAPACK_LIBRARIES:PATH="$ROGER_LAPACK_LIBRARY" \
-D CMAKE_CXX_COMPILER:FILEPATH="mpicxx" \
-D CMAKE_C_COMPILER:FILEPATH="mpicc" \
-D CMAKE_Fortran_COMPILER:FILEPATH="mpifort" \
-D CMAKE_CXX_FLAGS:STRING="-g -Wall" \
-D CMAKE_C_FLAGS:STRING="-g" \
-D Trilinos_ENABLE_Fortran:BOOL=OFF \
-D CMAKE_Fortran_FLAGS:STRING="-g" \
-D CMAKE_EXE_LINKER_FLAGS="-Wl,-fuse-ld=gold -L/usr/lib -lgfortran" \
-D Trilinos_ENABLE_CXX11:BOOL=ON \
-D CMAKE_VERBOSE_MAKEFILE:BOOL=OFF \
-D Trilinos_VERBOSE_CONFIGURE:BOOL=OFF \
-D CMAKE_SKIP_RULE_DEPENDENCY=ON \
-D CMAKE_BUILD_TYPE:STRING=RELEASE \
-D Trilinos_ENABLE_INSTALL_CMAKE_CONFIG_FILES:BOOL=OFF \
-D Trilinos_ENABLE_EXPORT_MAKEFILES:BOOL=OFF \
-D Trilinos_DEPS_XML_OUTPUT_FILE:FILEPATH="" \
-D Trilinos_TPL_SYSTEM_INCLUDE_DIRS:BOOL=ON \
../Trilinos

##-D Trilinos_EXTRA_REPOSITORIES="tempus" \
#!/usr/bin/bash

GENERATOR="Ninja"
PYTORCH_DIR="pytorch"

ARGS=()
ARGS+=("-G$GENERATOR")
ARGS+=("-DCMAKE_BUILD_TYPE=MinSizeRel")
ARGS+=("-DBUILD_SHARED_LIBS=OFF")
ARGS+=("-DBUILD_CAFFE2=OFF")
ARGS+=("-DBUILD_CAFFE2_MOBILE=OFF")
ARGS+=("-DCAFFE2_USE_MSVC_STATIC_RUNTIME=ON")
ARGS+=("-DMSVC_Z7_OVERRIDE=ON")
ARGS+=("-DUSE_CUDA=OFF")
ARGS+=("-DBUILD_PYTHON=OFF")
ARGS+=("-DBUILD_TEST=OFF")
ARGS+=("-DUSE_MKLDNN=OFF")
ARGS+=("-DUSE_GLOO=OFF")

# experimental 
ARGS+=("-DUSE_KINETO=OFF")
ARGS+=("-DUSE_FFTW=OFF")
ARGS+=("-DUSE_NUMPY=OFF")
ARGS+=("-DUSE_NNPACK=OFF")
ARGS+=("-DUSE_OPENMP=OFF")
ARGS+=("-DUSE_XNNPACK=OFF")
ARGS+=("-DUSE_DISTRIBUTED=OFF")
ARGS+=("-DUSE_MPI=OFF")
ARGS+=("-DUSE_TENSORPIPE=OFF")
ARGS+=("-DBUILD_LAZY_TS_BACKEND=OFF")
ARGS+=("-DUSE_PYTORCH_QNNPACK=OFF")
ARGS+=("-DUSE_FBGEMM=OFF")
ARGS+=("-DUSE_QNNPACK=OFF")
ARGS+=("-DUSE_EIGEN_FOR_BLAS=OFF")

cd $PYTORCH_DIR
cmake . -B build ${ARGS[@]}
cd build
${GENERATOR,,}

echo "permission required to install"
sudo ${GENERATOR,,} install

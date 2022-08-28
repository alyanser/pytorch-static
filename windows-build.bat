@echo off

set GENERATOR=Ninja
set PYTORCH_DIR=pytorch
set INSTALL_PREFIX=%cd%\%PYTORCH_DIR%\build\install

set args=-G%GENERATOR%
set args=%args% -DCMAKE_BUILD_TYPE=MinSizeRel
set args=%args% -DBUILD_SHARED_LIBS=OFF
set args=%args% -DCAFFE2_USE_MSVC_STATIC_RUNTIME=ON
set args=%args% -DMSVC_Z7_OVERRIDE=ON

set args=%args% -DBUILD_CAFFE2=OFF
set args=%args% -DBUILD_PYTHON=OFF
set args=%args% -DBUILD_TEST=OFF
set args=%args% -DBUILD_LAZY_TS_BACKEND=OFF

set args=%args% -DUSE_FBGEMM=ON
set args=%args% -DUSE_NNPACK=ON
set args=%args% -DBUILD_CUSTOM_PROTOBUF=ON

set args=%args% -DUSE_NCCL=OFF
set args=%args% -DUSE_CUDA=OFF
set args=%args% -DUSE_MKLDNN=OFF
set args=%args% -DUSE_GLOO=OFF
set args=%args% -DUSE_KINETO=OFF
set args=%args% -DUSE_NUMPY=OFF
set args=%args% -DUSE_OPENMP=OFF
set args=%args% -DUSE_XNNPACK=OFF
set args=%args% -DUSE_DISTRIBUTED=OFF
set args=%args% -DUSE_MPI=OFF
set args=%args% -DUSE_TENSORPIPE=OFF
set args=%args% -DUSE_PYTORCH_QNNPACK=OFF
set args=%args% -DUSE_QNNPACK=OFF
set args=%args% -DUSE_FFTW=OFF

cd %PYTORCH_DIR%
cmake . -B build %args%
cd build
cmake --build . --target install

docker run -it --rm \
  --gpus all \
  -v ${PWD}:/project \
  -p 8888:8888 \
  tensorflow/tensorflow:2.12.0-gpu-jupyter \
  sh -c "pip install -r /project/requirements.txt && jupyter notebook /project --ip 0.0.0.0 --no-browser --allow-root"

# Must have installed nvidia-containter-runtime package and cuda-toolkit
# https://github.com/NVIDIA/nvidia-container-runtime/
# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_local
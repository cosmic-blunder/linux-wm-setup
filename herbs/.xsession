#Nvidia forced offloading. Cause issue with Obs screen sharing :(
export  LIBGL_ALWAYS_SOFTWARE=0
export GBM_BACKEND=nvidia-drm
export LIBVA_DRIVER_NAME=nvidia
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export __NV_PRIME_RENDER_OFFLOAD=1
export __VK_LAYER_NV_optimus=any
export __GL_VRR_ALLOWED=1
export  VDPAU_DRIVER=nvida

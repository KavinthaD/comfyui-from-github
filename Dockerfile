# Start from the official 'base' image which is a clean ComfyUI install
FROM runpod/worker-comfyui:5.5.0-base

# Install all custom nodes in a single RUN command to ensure network stability
RUN cd /comfyui/custom_nodes/ && \
    git clone https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG.git && \
    git clone https://github.com/ssitu/ComfyUI_Image_Crop_Face.git && \
    git clone https://github.com/ltdrdata/ComfyUI-Manager.git
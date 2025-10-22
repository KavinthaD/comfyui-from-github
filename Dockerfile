# Start from the official 'base' image which is a clean ComfyUI install
FROM runpod/worker-comfyui:5.5.0-base

# Install the custom nodes you need using git clone
# The destination path is /comfyui/custom_nodes/
RUN git clone https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG.git /comfyui/custom_nodes/ComfyUI-BRIA_AI-RMBG
RUN git clone https://github.com/ssitu/ComfyUI_Image_Crop_Face.git /comfyui/custom_nodes/ComfyUI_Image_Crop_Face
RUN git clone https://github.com/ltdrdata/ComfyUI-Manager.git /comfyui/custom_nodes/ComfyUI-Manager

# The start command is already handled by the base image, so we don't need a CMD or ENTRYPOINT
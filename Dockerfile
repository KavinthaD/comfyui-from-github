# Start from the official 'base' image which is a clean ComfyUI install
FROM runpod/worker-comfyui:5.5.0-base

# Install OpenCV and other dependencies required for face detection
RUN pip install --no-cache-dir opencv-python opencv-contrib-python

# Install custom nodes one by one with better error handling
RUN cd /comfyui/custom_nodes/ && \
    git clone --depth 1 https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG.git && \
    pip install --no-cache-dir -r ComfyUI-BRIA_AI-RMBG/requirements.txt

# Install WAS Node Suite which includes Image Crop Face node
RUN cd /comfyui/custom_nodes/ && \
    git clone --depth 1 https://github.com/ltdrdata/was-node-suite-comfyui.git && \
    pip install --no-cache-dir -r was-node-suite-comfyui/requirements.txt

# ComfyUI-Manager is already included in the base image, no need to install it
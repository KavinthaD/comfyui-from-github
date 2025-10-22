# Start from the official 'base' image which is a clean ComfyUI install
FROM runpod/worker-comfyui:5.5.0-base

# Install the custom nodes you need using git clone
# The destination path is /comfyui/custom_nodes/
RUN git clone https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG.git /comfyui/custom_nodes/ComfyUI-BRIA_AI-RMBG

# IMPORTANT: This specific node has its own Python dependencies. We must install them.
RUN pip install --no-cache-dir -r /comfyui/custom_nodes/ComfyUI-BRIA_AI-RMBG/requirements.txt

# (Optional but Recommended) You can add other nodes here too, like the Manager
RUN git clone https://github.com/ltdrdata/ComfyUI-Manager.git /comfyui/custom_nodes/ComfyUI-Manager

# The start command is already handled by the base image, so we don't need a CMD or ENTRYPOINT
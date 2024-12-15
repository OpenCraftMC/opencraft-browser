# OpenCraft-Browser

WebAssembly build to run OpenCraft in the browser.

## Prerequisites

To compile OpenCraft to WebAssembly, ensure you have the following tools installed:

- **Git**: To clone repositories.
- **Python 3**: To serve the application locally.
- **Emscripten SDK**:
  - Follow the [Emscripten Installation Guide](https://emscripten.org/docs/getting_started/downloads.html) or use the instructions below for a quick setup.

## Quick Setup

### 1. Install Emscripten

Run these commands to set up Emscripten in your environment:

```bash
# Clone the Emscripten SDK repository
git clone https://github.com/emscripten-core/emsdk.git

# Navigate to the SDK directory
cd emsdk

# Install and activate the latest Emscripten version
./emsdk install latest
./emsdk activate latest

# Set up the environment variables for the current terminal session
source ./emsdk_env.sh
```

### 2. Clone OpenCraft-Browser

```bash
git clone https://github.com/<your-username>/opencraft-browser.git
cd opencraft-browser
```

## Building OpenCraft for the Browser

1. Compile the C++ source files to WebAssembly:

   ```bash
   emcc src/main.cpp -o dist/index.html -s USE_WEBGL2=1 -s WASM=1 -O3
   ```

   - **`-s USE_WEBGL2=1`**: Enables WebGL 2 for rendering.
   - **`-s WASM=1`**: Outputs WebAssembly instead of asm.js.
   - **`-O3`**: Optimizes the build for performance.

2. The output files (`index.html`, `index.wasm`, etc.) will be in the `dist/` directory.

## Running OpenCraft in the Browser

1. Serve the `dist/` directory using Python:

   ```bash
   python3 -m http.server 8000
   ```

2. Open your browser and navigate to:

   ```
   http://localhost:8000/index.html
   ```

## Development Workflow

- Rebuild after changes:
  ```bash
  emcc src/main.cpp -o dist/index.html -s USE_WEBGL2=1 -s WASM=1 -O3
  ```

- Reload the browser to see the changes.
rm -rf opencraft
rm -rf dist
mkdir dist
git clone https://github.com/OpenCraftMC/opencraft.git
emcc opencraft/main.cpp -o dist/opencraft.js -s USE_WEBGL2=1 -s WASM=1
python3 -m http.server 8000
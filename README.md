# asm

nasm -f win64 -o build/main.obj main.asm
 
gcc build/main.obj -o build/main.exe

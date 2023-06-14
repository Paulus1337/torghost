echo "Torghost installer v3.0.1"
echo "Installing prerequisites "
sudo apt-get install tor python3-pip python3.11 python3.11-dev cython3 -y
echo "Installing dependencies "
sudo pip3 install -r requirements.txt 
mkdir build
cd build
cython3 ../torghost.py --embed -o torghost.c --verbose -X language_level=3
if [ $? -eq 0 ]; then
    echo [SUCCESS] Generated C code
else
    echo [ERROR] Build failed. Unable to generate C code using cython3
    exit 1
fi
gcc -Os -I /usr/include/python3.11 -o torghost torghost.c -lpython3.11 -lpthread -lm -lutil -ldl
if [ $? -eq 0 ]; then
    echo [SUCCESS] Compiled to static binay 
else
    echo [ERROR] Build failed
    exit 1
fi
sudo mv torghost /usr/bin/torghost
if [ $? -eq 0 ]; then
    echo [SUCCESS] Moved binary to /usr/bin 
else
    echo [ERROR] Unable to copy
    exit 1
fi

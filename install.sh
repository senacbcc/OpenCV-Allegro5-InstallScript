echo "Instalação da Biblioteca Allegro 5"
arch=$(uname -m)
if [ "$arch" == "i686" -o "$arch" == "i386" -o "$arch" == "i486" -o "$arch" == "i586" ]; then
flag=1
else
flag=0
fi
echo "Atualizando Sistema."
sudo apt-get update
echo "Instalando Dependencias... "
sudo apt-get -y install libgl1-mesa-dev 
sudo apt-get -y install libglu1-mesa-dev 
sudo apt-get -y install cmake 
sudo apt-get -y build-essential 
sudo apt-get -y make 
sudo apt-get -y libxcursor-dev
udo apt-get install -y cmake g++ freeglut3-dev libxcursor-dev libpng12-dev libjpeg-dev libfreetype6-dev libgtk2.0-dev libasound2-dev libpulse-dev libopenal-dev libflac-dev libdumb1-dev libvorbis-dev libphysfs-dev
sudo apt-get install -y libpng-dev libz-dev libcurl4-gnutls-dev libfreetype6-dev libasound-dev
echo "Baixando Allegro 5 ..."
git clone git://git.code.sf.net/p/alleg/allegro
echo "Instalando Allegro 5..."
cd allegro
git checkout 5.0
cmake -DCMAKE_INSTALL_PREFIX=/usr .
make
sudo make install
mkdir OpenCV
cd OpenCV
echo "Removendo os ffmpeg e x264 pré instalados."
sudo apt-get -y remove ffmpeg x264 libx264-dev
cho "Instalando dependências."
sudo apt-get -y install libopencv-dev
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm
sudo apt-get -y install libtiff4-dev libjpeg-dev libjasper-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev
sudo apt-get -y install libtbb-dev
sudo apt-get -y install libqt4-dev libgtk2.0-dev
sudo apt-get -y install libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev
sudo apt-get -y install x264 v4l-utils ffmpeg
echo "Baixando o OpenCV 2.4.8"
wget -O OpenCV-2.4.8.zip http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.8/opencv-2.4.8.zip/download
echo "Instalando o OpenCV 2.4.8"
unzip OpenCV-2.4.8.zip
cd opencv-2.4.8
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_SHARED_LIBS=OFF -D BUILD_FAT_JAVA_LIB=ON -D BUILD_EXAMPLES=OFF -D BUILD_DOCS=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_1394=OFF -D WITH_QT=ON -D WITH_OPENGL=ON ..
make -j4
sudo make install
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
sudo apt-get -y remove libopencv-dev
sudo apt-get -y remove build-essential checkinstall cmake pkg-config yasm
sudo apt-get -y remove libtiff4-dev libjpeg-dev libjasper-dev
sudo apt-get -y remove libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev
sudo apt-get -y remove libtbb-dev
udo apt-get -y remove libqt4-dev libgtk2.0-dev
sudo apt-get -y remove libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev
sudo apt-get -y remove x264 v4l-utils ffmpeg
sudo apt-get -y install libtbb2 libtiff4 libopenexr6 libgstreamer-plugins-base0.10-0 libv4l-0 libavcodec53 libavformat53 libswscale2 libqt4-opengl libqt4-test
sudo apt-get install libhighgui-dev
echo "OpenCV 2.4.8 pronto para ser usado."
echo "Fim."

echo "--------------------------------------"
echo "|      Fonts to /usr/share/fonts     |"
echo "--------------------------------------"

sudo cp ./FiraCode/*.ttf /usr/share/fonts/truetype
sudo fc-cache -fv
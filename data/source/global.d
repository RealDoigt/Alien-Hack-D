module global;
import raylib_misc;
import menu;
import game;

//Used to position text in screen - ENUM TEMPORARY will be changed when we arrived at options formating for an int
enum widthScreen = 1080;
enum heightScreen = 720;

int positionLabelX = widthScreen / 2 - 50,
    positionLabelY = heightScreen / 2;

//Used to change FontSize of label in screen (default 20) + spacing for label
//ENUM TEMP
enum fontSize = 40;
int spacePosY = fontSize;

Level activeLevel;

ClickableImage xorButton, andButton;

auto getImagePath(string name) {return "img/" ~ name ~ ".png"; }

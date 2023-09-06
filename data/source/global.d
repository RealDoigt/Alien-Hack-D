module global;
import menu.screens.options;

//Used to position text in screen - ENUM TEMPORARY will be changed when we arrived at options formating for an int
enum widthScreen = 1080;
enum heightScreen = 720;

int positionLabelX = widthScreen / 2 - 50,
    positionLabelY = heightScreen / 2;

//Used to change FontSize of label in screen (default 20) + spacing for label
//ENUM TEMP
enum fontSize = 40;
int spacePosY = fontSize;
char[8] currentModule;
enum savesFolder = "saves/";
enum modulesFolder = "modules/";

Level activeLevel;

module global;
import menu.screens.options;
import game.level;

//Used to position text in screen - ENUM TEMPORARY will be changed when we arrived at options formating for an int
enum widthScreen = 1080;
enum heightScreen = 720;

enum moduleSize = 8;
alias module_t = char[moduleSize];

int positionLabelX = widthScreen / 2 - 50,
    positionLabelY = heightScreen / 2;

//Used to change FontSize of label in screen (default 20) + spacing for label
//ENUM TEMP
enum fontSize = 40;
int spacePosY = fontSize;
module_t currentModule;
enum savesFolder = "saves/";
enum modulesFolder = "modules/";

Level activeLevel;

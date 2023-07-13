module game.loop;
import global;
import raylib;
import game;


enum startX    = 100;
enum startY    = 50;
enum bitWidth  = 20;
enum bitHeight = 60;

void displayGameplay()
{
    for (int y = activeLevel.height - 1; y >= 0; --y)
    {
        for (int x = 0; x < activeLevel.width; ++x)
            DrawRectangle(startX + (x << 5), startY + y * 100, bitWidth, bitHeight, activeLevel.getColor(x, y));



        //auto fun = () {};
        xorButton.x = startX;
        xorButton.y = startY + y;
        xorButton.draw;
        xorButton.onHover;
        xorButton.onClick;
        xorButton.onExit;
    }
}

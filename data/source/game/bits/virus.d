module game.bits.virus;
import game.bits.bit;
import raylib_misc;
import game.level;
import raylib;

class Virus : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
        color = purple;
    }

    override void changeState(Level level, int x, int y)
    {
        isAlive = true;

        if (!level.isAlive(x + 1, y)) level.toggle(x + 1, y);
        if (!level.isAlive(x - 1, y)) level.toggle(x - 1, y);
        if (!level.isAlive(x, y + 1)) level.toggle(x, y + 1);
        if (!level.isAlive(x, y - 1)) level.toggle(x, y - 1);
    }
}
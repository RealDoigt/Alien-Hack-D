module game.bits.explosive;
import game.bits.bit;
import raylib_misc;
import game.level;
import raylib;


class Explosive : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
        color = red;
    }

    override void changeState(Level level, int x, int y)
    {
        if (level.isAlive(x + 1, y) && level.isAlive(x - 1, y))
        {
            isAlive = false;
            level.toggle(x + 1, y);
            level.toggle(x - 1, y);
        }
    }
}

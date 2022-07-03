module game.bits.explosive;
import game.bits.bit;
import game.level;


class Explosive : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
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
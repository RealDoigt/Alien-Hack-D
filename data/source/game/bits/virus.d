module game.bits.virus;
import game.bits.bit;
import game.level;

class Virus : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
    }

    override void change (Level level, int x, int y)
    {
        isAlive = true;

        if (!level.isAlive(x + 1, y)) level.toggle(x + 1, y);
        if (!level.isAlive(x - 1, y)) level.toggle(x - 1, y);
        if (!level.isAlive(x, y + 1)) level.toggle(x, y + 1);
        if (!level.isAlive(x, y - 1)) level.toggle(x, y - 1);
    }
}
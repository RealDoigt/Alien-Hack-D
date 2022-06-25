module game.bits.wise;
import game.bits.bit;
import game.level;

class Wise : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
    }

    override void change (Level level, int x, int y)
    {
        isAlive = level.getSolution[x] == '1';
    }
}
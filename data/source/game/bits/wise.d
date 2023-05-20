module game.bits.wise;
import game.bits.bit;
import raylib_misc;
import game.level;
import raylib;

class Wise : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
        color = white;
    }

    override void changeState(Level level, int x, int y)
    {
        isAlive = level.getSolution[x] == '1';
    }
}
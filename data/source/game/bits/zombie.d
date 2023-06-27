module game.bits.zombie;
import raylib_misc;
import game;

class Zombie : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
        color = yellow;
    }

    override void changeState(Level level, int x, int y)
    {
        isAlive = !isAlive;
    }
}

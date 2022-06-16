module game.bits.zombie;
import game;

class Zombie : Bit
{
    this (bool isAlive)
    {
        super(isAlive);
    }

    override void change(Level level, int x, int y)
    {
        isAlive = !isAlive;
    }
}
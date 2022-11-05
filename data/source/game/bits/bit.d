module game.bits.bit;
import game.level;


class Bit
{
    bool isAlive;

    this(bool isAlive)
    {
        this.isAlive = isAlive;
    }

    // Keep it empty because the regular bit doesn't do anything.
    void changeState(Level level, int x, int y){}
}
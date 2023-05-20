module game.bits.bit;
import raylib_misc;
import game.level;
import raylib;

class Bit
{
    bool isAlive;
    protected auto color = green;
    private const dark = 3; // the param which is used to darken the color of dead bits

    this(bool isAlive)
    {
        this.isAlive = isAlive;
    }

    // Keep it empty because the regular bit doesn't do anything.
    void changeState(Level level, int x, int y){}

    Color getColor()
    {
        return isAlive ? color : Color(color.r >> dark, color.g >> dark, color.b >> dark, color.a);
    }
}
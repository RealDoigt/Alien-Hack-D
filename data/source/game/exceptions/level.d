module game.exceptions.level;
import std.string;

class LevelSizeTooSmallException : Exception
{
    this(string file)
    {
        super("The level %s is too small".format(file), __FILE__, __LINE__);
    }
}

class LevelFileNotFoundException : Exception
{
    this(string file)
    {
        super("The level %s couldn't be found".format(file), __FILE__, __LINE__);
    }
}

class InvalidBitTypeException : Exception
{
    this(ubyte value)
    {
        super
        (
            "Number %d doesn't correspond to an extant bit type".format(value), 
            __FILE__, 
            __LINE__
        );
    }
}

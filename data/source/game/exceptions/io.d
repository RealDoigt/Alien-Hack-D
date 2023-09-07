module game.exceptions.io;
import std.string;

class CannotFindModuleException : Exception
{
    this(char[8] module)
    {
        super("Cannot find %s in the modules folder!".format(module), __FILE__, __LINE__);
    }
}
module game.exceptions.io;
import std.string;

class CannotFindModuleException : Exception
{
    this(char[8] moduleName)
    {
        super("Cannot find %s in the modules folder!".format(moduleName), __FILE__, __LINE__);
    }
}

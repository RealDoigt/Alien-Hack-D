module game.level;
import std.string;
import game.bits;
import raylib;

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

class Level
{
    enum maxWidth = 8;

    Bit[][] bits;
    
    ubyte solution,
          shifts,
          ors,
          xors,
          ands,
          nots;

    this(string file)
    {
        if (!file.ptr.FileExists) throw new LevelFileNotFoundException(file);

        uint bytes;

        ubyte* data = file.ptr.LoadFileData(&bytes);
        scope (exit) data.UnloadFileData; 

        // it is impossible to have a smaller level without incomplete data
        if (bytes < 15) throw new LevelSizeTooSmallException(file);

        solution = data[1];
        shifts   = data[2];
        ors      = data[3];
        xors     = data[4];
        ands     = data[5];
        nots     = data[6];

        bits = 

        // the first byte is the number of rows
        for (int y = 0; y < data[0]; ++y)
            for (int x = 0; x < maxWidth; ++x)


    }
}
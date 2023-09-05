module game.io;
import std.file;
import global;
import game;

package enum fileFormat = ".bin";

class GameFile
{
    private string fileName;

    this(string fileName)
    {
        this.fileName = fileName;
    }

    auto getFileName()
    {
        return fileName;
    }
}

class SaveFile : GameFile
{
    private ubyte[] binaryData;

    this(string fileName, ubyte[] binaryData)
    {
        super(fileName);
        this.binaryData = binaryData;
    }

    auto getBinaryData()
    {
        return binaryData;
    }
}

void save(Score[] scores, string fileName)
{
    ubyte[] binaryData;

    foreach (c; currentModule) binaryData ~= cast(ubyte)c;
    binaryData ~= cast(ubyte)scores.length;

    foreach (s; scores)
      foreach (b; s.getBytes)
        binaryData ~= b;

    write(savesFolder ~ fileName ~ fileFormat, binaryData);
}

auto getSaveFiles()
{
    auto fileNames = dirEntries!false(savesFolder, "*" ~ fileFormat, SpanMode.shallow, false);

    SaveFile[] files;

    foreach (name; fileNames)
    {
        auto location = savesFolder ~ name;
        files ~= new SaveFile(location, cast(ubyte[])read(location))
    }

    return files;
}

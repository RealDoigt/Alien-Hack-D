module game.files.io;
import std.file;
import global;
import game;

package enum fileFormat = ".bin", levelFormat = ".dat";

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

auto load(SaveFile sf)
{
    // activeLevel
    Score[] scores;
    auto rawData = cast(ubyte[])sf.name.read;
    
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

auto getLevelFiles(string moduleName)
{
    auto fileNames = dirEntries!false(savesFolder, "*" ~ levelFormat, SpanMode.shallow, false);

    GameFile[] files;

    foreach (name; fileNames)
        files ~= new GameFile(modulesFolder ~ moduleName ~ name);

    return files;
}

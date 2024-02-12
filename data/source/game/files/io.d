module game.files.io;
import std.file;
import std.conv;
import global;
import game;

package enum fileFormat = ".bin";
enum levelFormat = ".dat";

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
    auto data = sf.getBinaryData;
    module_t newModule;
    Score[] scores;
    Level newLevel;

    for (byte i; i < moduleSize; ++i)
    {
        if (data[i] == 0) break;
        newModule[i] = cast(char)data[i];
    }

    if (!newModule.moduleExists)
        throw new CannotFindModuleException(newModule);

    currentModule = newModule;
    
    
    
    return scores;
}

auto getSaveFiles()
{
    auto fileNames = dirEntries(savesFolder, "*" ~ fileFormat, SpanMode.shallow, false);

    SaveFile[] files;

    foreach (name; fileNames)
    {
        auto location = savesFolder ~ name;
        files ~= new SaveFile(location, cast(ubyte[])read(location));
    }

    return files;
}

auto getLevelFiles(string moduleName)
{
    auto fileNames = dirEntries(savesFolder, "*" ~ levelFormat, SpanMode.shallow, false);

    GameFile[] files;

    foreach (name; fileNames)
        files ~= new GameFile(modulesFolder ~ moduleName ~ name);

    return files;
}

auto getModules()
{
    auto modules = dirEntries(modulesFolder, "*", SpanMode.shallow, false);
    module_t[] results;
    
    foreach (m; modules)
        if (m.length <= moduleSize)
        {
            // I don't know how to do the following in one line instead of two
            module_t temp;
            results ~= temp;
            foreach (i, c; m) results[$ - 1][i] = c;
        }
        
    return results;
}

auto tutorialExists()
{
    return ['T', 'U', 'T', 'O', 'R', 'I', 'A', 'L'].moduleExists;
}

auto gameExists()
{
    return ['A', 'L', 'I', 'E', 'N', 'D', 'R', 'C'].moduleExists;
}

auto moduleExists(module_t moduleName)
{
    return isDir(modulesFolder ~ moduleName);
}

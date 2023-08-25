module game.io;
import std.file;
import global;
import game;

package enum fileFormat = ".bin";

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

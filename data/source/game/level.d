module game.level;
import std.string;
import std.conv;
import raylib;
import game;

class Level
{
    enum maxWidth = 8;

    private 
    {
        Bit[][] bits;
        ubyte solution,
              shifts,
              ors,
              xors,
              ands,
              nots,
              id;

        // fonction de test à enlever plus tard
        auto concatBitsToString()
        {
            string result;

            foreach (cluster; bits)
            {
                foreach (bit; cluster)
                    result ~= typeid(bit).toString;

                result ~= "\n";
            }

            return result;
        }
    }

    this(string file)
    {
        if (!file.ptr.FileExists) throw new LevelFileNotFoundException(file);
        
        // Note: Ceci va devoir changer quand l'on va mettre les niveaux dans des modules.
        id = file.split(".")[0].to!ubyte;

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

        bits = new Bit[][](data[0], maxWidth);

        // the first byte is the number of rows
        for (int y = 0; y < data[0]; ++y)
            for (int x = 0; x < maxWidth; ++x)
            {
                /* 
                    the 8th byte (or 7th in the index order) is the byte
                    where the data on the bits starts
                */ 
                ubyte value = data[y * maxWidth + x + 7];
                auto isAlive = cast(bool)(value & 1);
                
                /* 
                    un bit est arrangé comme suit où b est le booléen d'activité
                    et t et le type de bit: 0000 tttb
                */
                switch (value >> 1)
                {
                    case 1: 
                        bits[y][x] = new Bit(isAlive); 
                        break;

                    case 2:
                        bits[y][x] = new Explosive(isAlive);
                        break;
                    
                    case 3:
                        bits[y][x] = new Virus(isAlive);
                        break;

                    case 4:
                        bits[y][x] = new Zombie(isAlive);
                        break;

                    case 5:
                        bits[y][x] = new Wise(isAlive);
                        break;

                    default: throw new InvalidBitTypeException(value >> 1);
                }
            }
    }

    // fonction de test à enlever plus tard
    override string toString()
    {
        return "Goal %b\nShifts %d Ors %d Xors %d Ands %d Nots %d\n%s".format
        (
            solution,
            shifts,
            ors,
            xors,
            ands,
            nots,
            concatBitsToString
        );
    }

    void toggle(int x, int y, bool activateEffect = false)
    {
        // the virus bit will be out of bounds if on any of the sides
        if (x < bits[0].length || y < bits.length)
        {
            bits[y][x].isAlive = !bits[y][x].isAlive;
            if (activateEffect) bits[y][x].changeState(this, x, y);
        }
    }

    auto isAlive(int x, int y)
    {
        // the explosive and virus bit will be out of bounds if on any of the sides
        if (x >= bits[0].length || y >= bits.length)
            return false;

        return bits[y][x].isAlive;
    }

    auto getSolution()
    {
        char[8] result;

        for (int i = 0; i < 8; ++i)
            result[7 - i] = (solution << (7 - i)) >> 7 ? '1' : '0';

        return result.to!string;
    }

    auto toRealBits(int row)
    {
        if (row >= bits.length || row < 0) 
            throw new RowOutOfLevelRangeException(row, bits.length);

        ubyte result, x = 8; 

        foreach (bit; bits[row])
            result |= cast(ubyte)bit.isAlive << --x;

        return result;
    }

    auto isSolved()
    {
        return toRealBits(cast(int)bits.length - 1) == solution;
    }
}
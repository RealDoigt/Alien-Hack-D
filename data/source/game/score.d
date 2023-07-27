module game.score;
import std.datetime;

struct Score
{
    Date date;
    ubyte levelID;
    TimeOfDay time;
    ushort milliseconds;
    
    private
    {
        ubyte scrambledMonth()
        {
            final switch (date.month)
            {
                case Month.jan: return 15;
                case Month.feb: return  5;
                case Month.mar: return 11;
                case Month.apr: return 13;
                case Month.may: return  9;
                case Month.jun: return  2;
                case Month.jul: return  7;
                case Month.aug: return  0;
                case Month.sep: return  3;
                case Month.oct: return  8;
                case Month.nov: return 14;
                case Month.dec: return 10;
            }
        }
        
        auto yearDifference()
        {
            return cast(ubyte)(date.year - 2023);
        }
        
        ubyte postmeridiem()
        {
            return time.hour > 12;
        }
        
        auto time12()
        {
            auto result = cast(ubyte)(time.hour - 12);
            return result ? result : 12;
        }
    }
    
    auto isEarlier(Score other)
    {
        if (date.year < other.date.year)           return true;
        if (date.dayOfYear < other.date.dayOfYear) return true;
        if (time.hour < other.time.hour)           return true;
        if (time.minute < other.time.minute)       return true;
        if (time.second < other.time.second)       return true;
        return false;
    }
    
    auto getBytes()
    {
        ubyte[7] result;
        
        result[0] = levelID;
        result[1] = cast(ubyte)(milliseconds >> 8);
        result[2] = cast(ubyte)(milliseconds & 255);
        
        return result;
    }
}

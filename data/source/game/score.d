module game.score;
import std.datetime;

struct Score
{
    Date date;
    ubyte levelID;
    TimeOfDay time;
    ushort milliseconds;
    
    auto isEarlier(Score other)
    {
        if (date.year < other.date.year)           return true;
        if (date.dayOfYear < other.date.dayOfYear) return true;
        if (time.hour < other.time.hour)           return true;
        if (time.minute < other.time.minute)       return true;
        if (time.second < other.time.second)       return true;
        return false;
    }
    
    ubyte getScrambledMonth()
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
}

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
}

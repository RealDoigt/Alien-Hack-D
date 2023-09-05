module game.files.base;

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

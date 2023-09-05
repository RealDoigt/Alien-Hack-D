module game.files.save;

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

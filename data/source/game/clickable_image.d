module game.clickable_image;
import raylib_misc;

class ClickableImage : Rect
{
    private
    {
        Img normalImage, hoverImage, activeImage;
        Tx2d texture;
    }

    this(int x, int y, string imagePath, string hoverImagePath, string activeImagePath)
    {
        super(x, y, 0, 0, transparent);

        normalImage = new Img(imagePath);
        hoverImage  = new Img(hoverImagePath);
        activeImage = new Img(activeImagePath);

        texture = new Tx2d(normalImage);

        width  = normalImage.width;
        height = normalImage.height;

        if (hoverImage.width != width || hoverImage.height != height)
            hoverImage.resize(width, height);

        if (activeImage.width != width || activeImage.height != height)
            activeImage.resize(width, height);
    }

    void OnClick()
    {
    }

    void draw()
    {
        texture.draw(x, y);
    }
}

module menu.clickable_text;
import menu;
import raylib;
import raylib_misc;

class ClickableText : Text
{
    private
    {
        Screens redirect;
        Rect area;
    }

    //Constructor to create the label
    this(Screens redirect, string contents, int x, int y, int fontSize, Color color = white)
    {
        super(contents, x, y, fontSize, color);
        this.redirect = redirect;
        /*
            code taken from rtext.c in raylib by raysan5 because I wanted the default spacing, under the zlib license
            see https://github.com/raysan5/raylib/blob/master/LICENSE for the full license text
        */
        int defaultFontSize = 10;   // Default Font chars height in pixel
        if (fontSize < defaultFontSize) fontSize = defaultFontSize;
        int spacing = fontSize / defaultFontSize;
        // end of the zlib licensed code

        auto size = measure(cast(float)spacing);

        area = new Rect(position, cast(int)size.x, cast(int)size.y);
    }

    //Function to check if the player is hovering an clickable option (if yes change color)
    void onHover()
    {
        if(area.checkCollision(GetMousePosition))
        {
            this.color = green;
            this.draw;
        }
    }

    //Function to check if a collision + if the player clicked on the option if yes redirect the player
    void onClick()
    {
        if (area.checkCollision(GetMousePosition) && IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
            currentScreen = redirect;
    }
}

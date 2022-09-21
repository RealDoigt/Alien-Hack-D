module menu.display_screen;
import menu.screens.options;
import menu;
import raylib;
import raylib_misc;

class DisplayScreen
{
    this(ClickableText[] labelClickable, Text[] labelNotClickable)
    {
        BeginDrawing;
            scope (exit) EndDrawing;

            foreach (text; labelNotClickable) text.draw;
            foreach (clickText; labelClickable)
            {
                clickText.draw;
                clickText.onClick;
                clickText.onHover;
            }
           
            black.ClearBackground;
    }
}
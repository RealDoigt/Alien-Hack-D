module menu.display_screen;
import menu;
import raylib;
import raylib_misc;

void displayScreen(ClickableText[] labelClickable, Text[] labelNotClickable)
{
    foreach (text; labelNotClickable) text.draw;
    foreach (clickText; labelClickable)
    {
        clickText.draw;
        clickText.onClick;
        clickText.onHover;
    }
}
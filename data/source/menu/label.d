module menu.label;
import menu.screens.selection;
import raylib;
import raylib_misc;

//Used for testing will be removed when we get the w and h from options.
int width = 1080;
int height = 720;

class Label
{
    string[] labelNotClickable = [];

    this(string[] labelNotClickable)
    {
        this.labelNotClickable = labelNotClickable;
    }

    void route(Screens updatedScreen)
    {
        currentScreen = updatedScreen;
        displayCurrentScreen;
    }
}

class ClickableLabel : Label
{
    string[] labelClickable = [];

    this(string[] labelClickable, string[] labelNotClickable)
    {
        this.labelClickable = labelClickable;
        super(labelNotClickable);
    }

    void isMouseOnOption(Rectangle[] labelRect)
    {
        foreach (Rectangle key; labelRect)
        {
            if (CheckCollisionPointRec(GetMousePosition, key) && IsMouseButtonDown(MOUSE_LEFT_BUTTON))
            {
                // --> ???? route(); how to get next screen??
            }
        }
    }

    void createLabels(Rectangle[] labelRect, string[] labelUsed)
    {
        foreach (i, c; labelUsed)
        {
            text(c, cast(int)i);
            labelRect[i] = createRectangle(cast(int)i);
        }
    }

    void text(string label, int index)
    {
        Text text = new Text("First Text", 2 ,2 ,20);

        text.x = width / 2 - 50;
        text.y = height / 2 + (20 * index);
        text.set(label);
        text.color = white;
        text.fontSize = 20;

        text.draw;
    }

    Rectangle createRectangle(int index)
    {
        return new Rect(width / 2 - 50, height / 2 + (20 * index), 85, 20, black);
    }

    void drawScreen() {}
}
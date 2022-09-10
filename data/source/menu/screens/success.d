module menu.screens.success;
import menu.screens.selection;
import raylib_misc;
import raylib_misc.shapes.rectangle;
import std.experimental.logger;
import raylib;

    string[] labelNotClickable = 
    [
        "Success!",
        "Time remaining : ",
    ];

    string[] labelClickable =
    [
        "Continue",
        "Save Game",
        "Return to main menu",
    ];

    void isMouseOnOption(Rectangle[] labelRect)
    {
        for (int i = 0; i < labelRect.length; i++)
        {
            if (CheckCollisionPointRec(GetMousePosition, labelRect[i]) && IsMouseButtonDown(MOUSE_LEFT_BUTTON))
            {
                changeCurrentScreen(i);
            }
        }
    }
 
    void changeCurrentScreen(int index)
    {
        final switch (index)
        {
            case 0:
                currentScreen = Screens.main_menu;
                break;
            case 1:
                currentScreen = Screens.save_game;
                break;
            case 2:
                currentScreen = Screens.main_menu;
                break;
        }
        displayCurrentScreen;
    }

    //Function that create the differentes label for the display
    void createLabels(int width, int height, Text defaultText, Rectangle[] labelRect, bool isClickable)
    {
        int positionLabelY = 0;
        string[] labelUsed = labelNotClickable;

        if (isClickable) 
        {
            positionLabelY = height / 2;
            labelUsed = labelClickable;
        }

        for (int i = 0; i < labelUsed.length; i++)
        {
            defaultText.x = width / 2 - 50;
            defaultText.y = positionLabelY + (20 * i);
            defaultText.set(labelUsed[i]);
            defaultText.color = white;
            defaultText.fontSize = 20;

            if (labelRect != null)
            {
                Rect newRectangle = new Rect(width / 2 - 50, height / 2 + (20 * i), 85, 20, black);
                labelRect[i] = newRectangle;
            }

            defaultText.draw;
        }
    }
    
    void setScreenSuccess() 
    {
        //TEMP - METTRE LE WIDTH ET HEIGHT EN PUBLIC POUR Y ACCEDER DEPUIS LES OPTIONS CHOISI
        int width = 1080;
        int height = 720;
        Rectangle[labelClickable.sizeof] labelClickableRect; 
        Text defaultText = new Text("First Text", 2 ,2 ,20);

        BeginDrawing;
            scope (exit) EndDrawing;
            
            DrawRectangle(0, 0, width, height, black);

            createLabels(width, height, defaultText, null, false);
            createLabels(width, height, defaultText, labelClickableRect, true);            
            isMouseOnOption(labelClickableRect);

            white.ClearBackground;
    }
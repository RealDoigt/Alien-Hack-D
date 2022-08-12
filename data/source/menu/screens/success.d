module menu.screens.success;
import menu.screens.selection;
import raylib_misc;
import raylib_misc.shapes.rectangle;
import std.experimental.logger;

import raylib;

    string[] clickableOptionsText = 
    [
        "Continue",
        "Save Game",
        "Return to main menu"
    ];

    string[] labelText = 
    [
        "Success!",
        "Time remaining",
    ];

    //Used for testing
    auto gameScreen = "Success";

    void isMouseOnOption(int width, int height, Rectangle[] rectCreated, Text text)
    {
        for (int i = 0; i < rectCreated.length; i++)
        {
            if (CheckCollisionPointRec(GetMousePosition, rectCreated[i]))
            {
                if (IsMouseButtonDown(MOUSE_LEFT_BUTTON))
                {
                    //displayMainMenu;
                    text.set(clickableOptionsText[i]);
                    text.draw;
                }
            }
        }
    }

    //TRASH NEED TO REFACTOR "DONT REPEAT YOURSELF"
    void createLabel(int width, int height, Text defaultText)
    {
        for (int i = 0; i < labelText.length; i++)
        {
            defaultText.x = width / 2 - 50;
            defaultText.y = 0 + (20 * i);
            defaultText.set(labelText[i]);
            defaultText.color = green;
            defaultText.fontSize = 20; 

            defaultText.draw;
        }
    }

    void createRectangleOptions(int width, int height, Text defaultText, Rectangle[] rectCreated)
    {
        for (int i = 0; i < clickableOptionsText.length; i++)
        {
            defaultText.x = width / 2 - 50;
            defaultText.y = height / 2 + (20 * i);
            defaultText.set(clickableOptionsText[i]);
            defaultText.color = white;
            defaultText.fontSize = 20;

            Rect newRectangle = new Rect(width / 2 - 50, height / 2 + (20 * i), 85, 20, black);
            rectCreated[i] = newRectangle;

            defaultText.draw;
        }
    }
    
    void setScreenSuccess() 
    {
        //TEMP - METTRE LE WIDTH ET HEIGHT EN PUBLIC POUR Y ACCEDER DEPUIS LES OPTIONS CHOISI
        int width = 1080;
        int height = 720;
        Rectangle[clickableOptionsText.sizeof] rectCreated; 
        Text defaultText = new Text("First Text", 2 ,2 ,20);

        BeginDrawing;
            scope (exit) EndDrawing;
            
            DrawRectangle(0, 0, width, height, black);

            createLabel(width, height, defaultText);
            createRectangleOptions(width, height, defaultText, rectCreated);            
            isMouseOnOption(width, height,rectCreated, defaultText);

            white.ClearBackground;
    }
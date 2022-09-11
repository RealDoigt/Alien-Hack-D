module menu.screens.success;
import menu.label;
import raylib_misc;
import raylib_misc.shapes.rectangle;
import std.experimental.logger;
import raylib;

class Success : ClickableLabel
{
    string[] labelClickable =
    [
        "Continue",
        "Save Game",
        "Return to main menu",
    ];

    string[] labelNotClickable = 
    [
        "Success!",
        "Time remaining : ",
    ];

    this(string[] labelClickable, string[] labelNotClickable)
    {
        super(labelClickable, labelNotClickable);
    }

    override void drawScreen()
    {
        //TEMP - METTRE LE WIDTH ET HEIGHT EN PUBLIC POUR Y ACCEDER DEPUIS LES OPTIONS CHOISI
        int width = 1080;
        int height = 720;
        Rectangle[labelClickable.sizeof] labelClickableRect; 

        BeginDrawing;
            scope (exit) EndDrawing;
            
            DrawRectangle(0, 0, width, height, black);
    
            createLabels(null, labelNotClickable);
            createLabels(labelClickableRect, labelClickable);            
            isMouseOnOption(labelClickableRect);
            
            white.ClearBackground;
    }
}
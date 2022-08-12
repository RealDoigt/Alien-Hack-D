import raylib_misc;
import raylib;
import game;
import menu;

void main()
{
    const width = 1080;
    const height = 720; 

    InitWindow(1080, 720, "A raylib game");
    SetTargetFPS(60);

    auto level = new Level("test.dat");

    
        while (!WindowShouldClose)
        {
            BeginDrawing;
            scope (exit) EndDrawing;
            
            setScreenSuccess;

            // code de test/*DrawRectangle(0, 0, width, height, black);
            /*DrawText("Success!", width / 2 - 75, 0, 40, green);
            DrawText("Timer Remaining : 0:40", width / 2 - 150, 60, 30, white);

            //DrawRectangle(width / 2 - 50, height / 2, 20, 10, orange);

            DrawText("Continue", width / 2 - 50, height / 2, 20, white);
            DrawText("Save Game", width / 2 - 50, (height / 2) + 20, 20, white);
            DrawText("Return to main menu", width / 2 - 50, (height / 2) + 40, 20, white);
            DrawText("Quit", width / 2 - 50, (height / 2) + 60, 20, white);

            if (CheckCollisionPointRec(GetMousePosition, currentOption))
            {
                if (IsMouseButtonDown(MOUSE_LEFT_BUTTON))
                {
                    DrawText("ORANGE", width / 2 - 150, height / 2, 20, white);
                }
            }*/

            
            //white.ClearBackground;
        }
}
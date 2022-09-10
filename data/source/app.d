import raylib_misc;
import raylib;
import game;

void main()
{
    InitWindow(1080, 720, "A raylib game");
    SetTargetFPS(60);

    activeLevel = new Level("test.dat");

    while (!WindowShouldClose)
    {
        BeginDrawing;
        scope (exit) EndDrawing;
        
        displayGameplay;

        black.ClearBackground;
    }
}

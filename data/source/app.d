import raylib_misc;
import raylib;
import game;

void main()
{
    InitWindow(1080, 720, "A raylib game");
    SetTargetFPS(60);

    auto level = new Level("test.dat");

    while (!WindowShouldClose)
    {
        BeginDrawing;
        scope (exit) EndDrawing;
        
        // code de test
        (level.toString ~ "\0").ptr.DrawText(0, 0, 8, black);

        white.ClearBackground;
    }
}
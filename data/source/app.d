import raylib_misc;
import raylib;
import game;
import menu;
import global;

void main()
{
    InitWindow(1080, 720, "A raylib game");
    SetTargetFPS(60);

   // activeLevel = new Level("test.dat");

    while (!WindowShouldClose)
    {
        displayCurrentScreen;

        BeginDrawing;
        scope (exit) EndDrawing;
        black.ClearBackground;
    }
}

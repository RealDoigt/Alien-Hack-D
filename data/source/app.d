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
        displayCurrentScreen;
    }
}
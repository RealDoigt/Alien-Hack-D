import raylib_misc;
import raylib;
import game;
import menu;

void main()
{
    InitWindow(1080, 720, "A raylib game");
    SetTargetFPS(60);

    activeLevel = new Level("test.dat");

    andButton = new ClickableImage(0, 0, "and".getImagePath, "and_on_hover".getImagePath, "and_is_clicked".getImagePath);
    xorButton = new ClickableImage(0, 0, "xor".getImagePath, "xor_on_hover".getImagePath, "xor_is_clicked".getImagePath);

    while (!WindowShouldClose)
    {
        displayCurrentScreen;

        BeginDrawing;
        scope (exit) EndDrawing;
        black.ClearBackground;
    }
}

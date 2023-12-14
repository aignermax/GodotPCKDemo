using Godot;
using System;

public partial class TextEdit : Godot.TextEdit
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        this.Visible = true;

        var pckPath = "res://PCKGreeting.pck";

        // try to load the PCK file
        if (ProjectSettings.LoadResourcePack(pckPath))
        {
            this.Text = $"PCK-file loaded successfully {pckPath}";


        }
        else
        {
            this.Text = "error loading PCK File";
            GD.PrintErr("PCK-file could not be loaded.");
        }
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
    }
}

pageextension 50101 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addlast(Content)
        {
            group(MyCustomGroup)
            {
                Caption = 'Custom Fields';
                field("Favorite Color"; Rec."Favorite Color")
                {
                    ApplicationArea = All;
                }
                field(CostumerNote;Rec.CostumerNote)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

pageextension 50102 EmployeeCardExt extends "Employee Card"
{
    layout
    {
        addlast(Content)
        {
            group("Additional Payment")
            {
                field("BingoLotter sålda";Rec."BingoLotter sålda")
                {
                    ApplicationArea = All;
                }
            }
            group(MyCustomGroup)
            {
                Caption = 'Custom Fields';
                field("Favorite Color"; Rec."Favorite Color")
                {
                    ApplicationArea = All;
                }
                field(EmployeeNote; Rec.EmployeeNote)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

page 50149 AnställdListPage
{
    PageType = List;
    SourceTable = Anställd;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Alla anställdaPage4';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(EmployeID; Rec.EmployeID) { ApplicationArea = All; }
                field(FirstName; Rec.FirstName) { ApplicationArea = All; }
                field(LastName; Rec.LastName) { ApplicationArea = All; }
                field(Salery; Rec.Salery) { ApplicationArea = All; }
                field(DOJ; Rec.DOJ) { ApplicationArea = All; }
                field(Gender; Rec.Gender) { ApplicationArea = All; }
            }
        }
    }
}

page 50148 displayAnställdTablePage4
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Anställd";

    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;
    Editable = true;
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(EmployeID; Rec."EmployeID")
                {
                    ApplicationArea = All;
                }

                field(FirstName; Rec."FirstName")
                {
                    ApplicationArea = All;
                }
                field(LastName; Rec."LastName")
                {
                    ApplicationArea = All;
                }
                field(Salery; Rec.Salery)
                {
                    ApplicationArea = All;
                    DecimalPlaces = 2 : 2;

                }
                field(DOJ; Rec.DOJ)
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    //OptionMembers = Male,Female;
                    ApplicationArea = All;

                }
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action(Test)
            {

                trigger OnAction()
                begin
                    Message('Data saved into the table');
                end;
            }
        }
    }

}
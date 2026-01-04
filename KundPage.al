page 50145 KundListPage
{
    PageType = List;
    SourceTable = Costumers;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Alla KunderPage4';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(EmployeID; Rec.CostumerID) { ApplicationArea = All; }
                field(FirstName; Rec.FirstName) { ApplicationArea = All; }
                field(LastName; Rec.LastName) { ApplicationArea = All; }
                field(OrderCost; Rec.OrderCost) { ApplicationArea = All; }
                field(OrderDate; Rec.OrderDate) { ApplicationArea = All; }
                field(Street
                ; Rec.Street) { ApplicationArea = All; }
                field(City; Rec.City) { ApplicationArea = All; }
                field(ZipCode; Rec.ZipCode) { ApplicationArea = All; }
            }
        }
    }
}

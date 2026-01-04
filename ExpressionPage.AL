page 50101 ExpressionPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Logical Expression Page';

    layout
    {
        area(Content)
        {
            group(NameSource)
            {
                field(UserType; UserType)
                {
                    ApplicationArea = All;
                    Caption = 'Välj Användartyp';
                }
            }

            group(Input)
            {
                Caption = 'Get Input form the user';
                field(Number1; Number1)
                {
                    ApplicationArea = All;
                }
                field(Number2; Number2)
                {
                    ApplicationArea = All;
                }

            }
            group(Output)
            {
                Caption = 'Output';
                field(Res; Res)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Run)
            {
                ApplicationArea = All;
                Caption = 'Run';
                Image = ExecuteBatch;
                trigger OnAction()
                begin
                    if Number1 < Number2 then begin

                        Res := Number1 < Number2;
                        Message('Correct, number 1 is bigger then number 2');

                    end else begin
                        Message('Incorrect, number 1 is lower then number 2');
                    end;

                end;
            }
        }
    }
    var
        UserType: Option Admin,Guest,Member;
        NameSource: Text[100];
        Number1: Integer;
        Number2: Integer;
        Res: Boolean;

}

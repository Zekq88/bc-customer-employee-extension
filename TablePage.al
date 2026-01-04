page 50102 "som shit"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Table4';
    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(ID; ID)
                {

                }
                field(FirstName; FirstName)
                {

                }
                field(LastName; LastName)
                {

                }
                field(Roll; Roll)
                {

                }
                field(Salery; Salery)
                {

                }
                field(Name; Name){

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

            }
        }
    }
    var
        ID: Integer;
        FirstName: Text[20];
        LastName: Text[30];
        Salery: Integer;
        Roll: Option Worker,Leader,CEO;
        Name: Text;


}
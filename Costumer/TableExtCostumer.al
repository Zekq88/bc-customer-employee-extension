
tableextension 50105 MyCostomerExtension extends Customer
{
    fields
    {
        field(50100; "Favorite Color"; Text[30])
        {
            Caption = 'Favorite Color';
            DataClassification = CustomerContent;
        }
        field(50101; "CostumerNote"; Text[50])
        {
            Caption= 'Customer note';
            DataClassification = CustomerContent;
        }
    }
    
}
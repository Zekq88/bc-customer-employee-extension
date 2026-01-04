
tableextension 50106 MyEmployeeExtension extends Employee
{
    fields
    {
        field(50100; "Favorite Color"; Text[30])
        {
            Caption = 'Favorite Color';
            DataClassification = CustomerContent;
        }
        field(50101; "EmployeeNote"; Text[50])
        {
            Caption= 'Employee note';
            DataClassification = CustomerContent;
        }

        field(50102; "BingoLotter sålda"; Integer)
        {
            DataClassification = CustomerContent; 
        }
    }
    
}
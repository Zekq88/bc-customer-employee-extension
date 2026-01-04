table 50149 Anställd
{

    DataClassification = ToBeClassified;
    Description = 'Testing testing';
    Caption = 'Employees';

    fields
    {
        field(1; "EmployeID"; Code[10])
        {

            DataClassification = CustomerContent;

        }
        field(2; "FirstName"; Text[20])
        {
            DataClassification = CustomerContent;
        }
        field(3; "LastName"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(4; "Salery"; Decimal)
        {
            DecimalPlaces = 2 : 2;
            DataClassification = CustomerContent;
        }
        field(5; DOJ; Date)
        {
            DataClassification = CustomerContent;
        }
        field(6; "Gender"; Option)
        {
            OptionMembers = Male,Female;
            DataClassification = CustomerContent;
        }
        field(7;Name; text[100])
        {

        }

    }

    keys
    {
        key(PK; EmployeID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


    trigger OnDelete()
    begin
        Message('Data is deleted');
    end;

    trigger OnRename()
    begin
        Message('Data is renamed');
    end;

}
table 50146 Costumers
{

    DataClassification = ToBeClassified;
    Description = 'Testing testing';
    Caption = 'Costumers';

    fields
    {
        field(1; "CostumerID"; Code[10])
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
        field(4; "OrderCost"; Decimal)
        {
            DecimalPlaces = 2 : 2;
            DataClassification = CustomerContent;
        }
        field(5; OrderDate; Date)
        {
            DataClassification = CustomerContent;
        }
        field(6; "Street"; text[30])
        {
            DataClassification = CustomerContent;
        }
        field(7; "City"; text[20])
        {
            DataClassification = CustomerContent;
        }
        field(8; "ZipCode"; Integer)
        {
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; CostumerID)
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
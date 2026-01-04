// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.test1;

using Microsoft.Sales.Customer;
using Microsoft.HumanResources.Employee;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin

        FindCustomerNamedRobin();
        FindKadergranMatches();
    end;

    procedure FindCustomerNamedRobin()
    var
        CustomerRec: Record Customer;
    begin
        CustomerRec.SetFilter(Name, 'Robin*');
        if CustomerRec.FindFirst() then
            Message('Kund hittad: %1', CustomerRec.Name)
        else
            Message('Ingen kund som börjar med "Robin" hittades.');
    end;

    procedure FindKadergranMatches()
    var
        CustomerRec: Record Customer;
        EmployeeRec: Record Employee;
    begin
        CustomerRec.SetFilter(Name, '*Kadergran'); //  * mostsvarar SQLs %
        EmployeeRec.SetFilter("Last Name", 'Kadergran');

        if CustomerRec.FindFirst() and EmployeeRec.FindFirst() then
            Message('Kund: %1, Anställd: %2', CustomerRec.Name, EmployeeRec."First Name" + ' ' + EmployeeRec."Last Name")
        else
            Message('Ingen match hittades för efternamnet Kadergran.');
    end;
}
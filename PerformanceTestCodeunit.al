codeunit 50101 "My Simple Performance Test"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure RunSimplePerformanceTest()
    var
        LibraryAssert: Codeunit "Library Assert";
        StartTime: DateTime;
        EndTime: DateTime;
        Duration: Duration;
        SalesHeader: Record "Sales Header";
    begin
        StartTime := CurrentDateTime();

        // Simulera affärslogik
        SalesHeader.Init();
        SalesHeader."Document Type" := SalesHeader."Document Type"::Order;
        SalesHeader."No." := 'PERF001';
        SalesHeader."Sell-to Customer No." := '10000';
        SalesHeader.Insert(true);

        EndTime := CurrentDateTime();
        Duration := EndTime - StartTime;

        // Kontrollera att det tog mindre än 2 sekunder
        LibraryAssert.AreEqual(true, Duration < 2000, 'Operation took too long: ' + Format(Duration));
    end;
}

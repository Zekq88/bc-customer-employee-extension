profile MyCompanyManagerRoleCenter
{
    Caption='Manager Dashbord for My Company';
    RoleCenter = MyCompanyManagerRoleCenter;
    Description = 'Custom Role Center for the new Comapany';
}


page 50147 MyCompanyManagerRoleCenter
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption= 'Manager Dashbord for My Company';
    
    layout
    {
        area(RoleCenter)
        {
            group(Quick)
            {
                Caption='Quick Access';
                part(SalesOrders; "Sales & Relationship Mgr. Act.")
                {
                    ApplicationArea = All;
                } 
            }

            group(Reports)
            {

                
            }
            
        }
    }

     actions
        {
            area(Reporting)
            {
                    action(RunCustomerList)
                    {
                        
                        ApplicationArea = All;
                        Caption= 'Customer List';
                        RunObject = page "Customer List";
                    }
                    action(RunVendorList)
                        {
                        
                        ApplicationArea = All;
                        Caption = 'Vendor List';
                        RunObject = page "Vendor List";
                        }   
                    action(RunEmployeeList)
                    {
                        ApplicationArea= All;
                        Caption = 'Employee List';
                        RunObject = Page "Employee List";
                    }
            }
        }
    
}
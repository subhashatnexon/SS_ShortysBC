pageextension 61903 NXN_Ext_SalesOrder extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("Delivery Instructions"; "Delivery Instructions")
            {
                ApplicationArea = All;
                Caption = 'Delivery Instructions';
            }
            field("Web Order Comments"; "Web Order Comments")
            {
                ApplicationArea = All;
                Caption = 'Additional Order Instructions';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
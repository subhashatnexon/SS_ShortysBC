pageextension 61904 NXN_Ext_SalesQuote extends "Sales Quote"
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
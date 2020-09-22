pageextension 61907 NXN_Ext_PostedSalesCreditMemo extends "Posted Sales Credit Memo"
{
    layout
    {
        addafter("Responsibility Center")
        {
            field("Delivery Instructions"; "Delivery Instructions")
            {
                ApplicationArea = All;
                Caption = 'Delivery Instructions';
                Editable = false;
            }
            field("Web Order Comments"; "Web Order Comments")
            {
                ApplicationArea = All;
                Caption = 'Additional Order Instructions';
                Editable = false;
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
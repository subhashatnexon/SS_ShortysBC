pageextension 61901 "NXN_Ext_SKUList" extends "Stockkeeping Unit List"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field("DropShip Purchase Code"; "NXN DropShip Purchase Code")
            {
                ApplicationArea = All;
                Caption = 'Drop Ship Purchase Code';
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
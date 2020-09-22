pageextension 61900 "NXN_Ext_SKUPage" extends "Stockkeeping Unit Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("DropShip Purchase Code"; "NXN DropShip Purchase Code")
            {
                ApplicationArea = All;
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
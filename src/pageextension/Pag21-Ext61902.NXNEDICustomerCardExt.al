pageextension 61902 NXN_Ext_CustomerCard extends "Customer Card"
{
    layout
    {
        addafter("Last Date Modified")
        {
            field("Ext. Doc. No. Mandatory"; "Ext. Doc. No. Mandatory")
            {
                ApplicationArea = All;
                Caption = 'Ext. Doc. No. Mandatory';
            }
            field("Delivery Instructions"; "Delivery Instructions")
            {
                ApplicationArea = All;
                Caption = 'Delivery Instructions';
            }
            field("Transaction Reminder"; "Transaction Reminder")
            {
                ApplicationArea = all;
                Caption = 'Transaction Reminder';
            }
            field("Wine-au"; "Wine-au")
            {
                ApplicationArea = All;
                Caption = 'Wine-au';
            }
            field("Cost Centre"; "Cost Centre")
            {
                ApplicationArea = All;
                Caption = 'Cost Centre';
            }
            field("NXN Consolidated Inv"; "NXN Consolidated Inv")
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
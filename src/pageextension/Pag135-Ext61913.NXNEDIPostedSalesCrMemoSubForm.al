pageextension 61913 NXN_Ext_PostdSalesCrMemoSubFrm extends "Posted Sales Cr. Memo Subform"
{
    layout
    {
        // Add changes to page layout here
        addafter(Description)
        {
            field("Web Personalization"; "Web Personalization")
            {
                ApplicationArea = All;
                Caption = 'Web Personalization';
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
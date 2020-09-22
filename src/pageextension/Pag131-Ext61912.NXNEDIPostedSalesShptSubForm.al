pageextension 61912 NXN_Ext_PostedSalesShptSubForm extends "Posted Sales Shpt. Subform"
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
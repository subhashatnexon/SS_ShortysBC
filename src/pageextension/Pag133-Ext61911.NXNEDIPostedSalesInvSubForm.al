pageextension 61911 NXN_Ext_PostedSalesInvSubForm extends "Posted Sales Invoice Subform"
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
pageextension 61914 NXN_Ext_SalesOrderArchSubFrm extends "Sales Order Archive Subform"
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
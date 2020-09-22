pageextension 61910 NXN_Ext_SalesOrderSubForm extends "Sales Order Subform"
{
    layout
    {
        // Add changes to page layout here
        addafter(Description)
        {
            field("Web Personalization"; "Web Personalisation")
            {
                ApplicationArea = All;
                Caption = 'Web Personalization';

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
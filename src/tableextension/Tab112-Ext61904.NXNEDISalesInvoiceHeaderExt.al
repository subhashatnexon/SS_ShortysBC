tableextension 61904 NXN_Ext_SalesInvoiceHeader extends "Sales Invoice Header"
{
    fields
    {
        field(50005; "Delivery Instructions"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Delivery Instructions';
        }
        field(50021; "Web Order Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Additional Order Instructions';
        }
    }

    var
        myInt: Integer;
}
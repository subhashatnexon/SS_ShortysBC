tableextension 61905 NXN_Ext_SalesCrMemoHeader extends "Sales Cr.Memo Header"
{
    fields
    {
        field(50005; "Delivery Instructions"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Delivery Instructions';
            Editable = false;
        }
        field(50021; "Web Order Comments"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Additional Order Instructions';
            Editable = false;
        }
    }

    var
        myInt: Integer;
}
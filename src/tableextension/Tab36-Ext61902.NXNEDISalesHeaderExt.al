tableextension 61902 NXN_Ext_SalesHeader extends "Sales Header"
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
tableextension 61914 NXN_Ext_ReturnRecptHeader extends "Return Receipt Header"
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
tableextension 61912 NXN_Ext_SalesArchiveHeader extends "Sales Header Archive"
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
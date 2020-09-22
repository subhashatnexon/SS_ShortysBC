tableextension 61915 NXN_Ext_ReturnRecptLine extends "Return Receipt Line"
{
    fields
    {

        field(50011; "Web Personalization"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Web Personalization';
            Editable = false;
        }

    }

    var
        myInt: Integer;
}
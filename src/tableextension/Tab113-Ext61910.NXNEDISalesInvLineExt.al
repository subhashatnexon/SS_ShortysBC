tableextension 61910 NXN_Ext_SalesInvtLine extends "Sales Invoice Line"
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
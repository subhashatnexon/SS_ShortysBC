tableextension 61913 NXN_Ext_SalesArchiveLine extends "Sales Line Archive"
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
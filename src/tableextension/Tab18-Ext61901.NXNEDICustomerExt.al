tableextension 61901 NXN_Ext_Customer extends Customer
{
    fields
    {
        field(50001; "Ext. Doc. No. Mandatory"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Ext. Doc. No. Mandatory';
        }
        field(50005; "Delivery Instructions"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Delivery Instructions';
        }
        field(50019; "Wine-au"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Wine-au';
        }
        field(50033; "Cost Centre"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Cost Centre';
        }
        field(61900; "NXN Consolidated Inv"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Consolidated Invoice';
        }
        field(50022; "Transaction Reminder"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Transaction Reminder';
        }



    }

    var
        myInt: Integer;
}
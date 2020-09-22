tableextension 61906 NXN_Ext_ItemCrossReference extends "Item Cross Reference"
{
    fields
    {
        field(50000; "Item Description"; Text[50])
        {
            Caption = 'Item Description';
            FieldClass = FlowField;
            CalcFormula = Lookup (Item.Description WHERE("No." = FIELD("Item No.")));
        }
    }

    var
        myInt: Integer;
}
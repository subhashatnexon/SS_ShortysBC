pageextension 61908 NXN_Ext_CrossReferenceList extends "Cross Reference List"
{
    layout
    {
        addafter(Description)
        {
            field("Item Description"; "Item Description")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
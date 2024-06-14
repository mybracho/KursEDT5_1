
#Region FormTableItemsEventHandlersItemList
&AtClient
Procedure ItemListPriceOnChange(Item)
	CurrentData = Items.ItemList.CurrentData;
	If CurrentData = Undefined Then
		Return;
	EndIf;	
	CalculateAmount(CurrentData);
EndProcedure

&AtClient
Procedure ItemListQuantityOnChange(Item)
	CurrentData = Items.ItemList.CurrentData;
	If CurrentData = Undefined Then
		Return;
	EndIf;
	CalculateAmount(CurrentData);
EndProcedure

#EndRegion

#Region Private

&AtClient
Procedure CalculateAmount(TableRow)
	TableRow.Amount = TableRow.Price * TableRow.Quantity;	
EndProcedure

#EndRegion


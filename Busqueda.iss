Sub Main
	Call Search()	'Ejemplo-Detalle de ventas.IMD
End Sub


' Datos: Búsqueda
Function Search
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.Search
	task.AddFieldToInc "NUM_FACT"
	task.AddFieldToInc "FECHA_FACT"
	task.AddFieldToInc "NUM_VENDEDOR"
	task.AddFieldToInc "NUM_CLI"
	task.AddFieldToInc "COD_PROD"
	task.AddFieldToInc "PRECIO_UNID"
	task.AddFieldToInc "CANTIDAD"
	task.AddFieldToInc "NETO"
	task.AddFieldToInc "IMPUESTO"
	task.AddFieldToInc "TOTAL"
	task.RecordFilesPrefix = "EB"
	task.PerformTask "400", 0, 0, 1
	dbName = "EB-Ejemplo-Detalle de ventas.IMD"
	Client.OpenDatabase(dbName)
	Set task = Nothing
	Set db = Nothing
End Function
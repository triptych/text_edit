extends Control




func _ready():
	pass

func _on_OpenFile_pressed():
	$FileDialog.popup()


func _on_SaveFile_pressed():
	$SaveDialog.popup()
	


func _on_FileDialog_file_selected(path):
	var f = File.new()
	f.open(path, 1)
	$TextEdit.text = f.get_as_text()


func _on_SaveDialog_file_selected(path):
	var f= File.new()
	f.open(path, 2)
	f.store_string($TextEdit.text)
	

extends Control




func _ready():
	$MenuButtonFile.get_popup().add_item("Open File")
	$MenuButtonFile.get_popup().add_item("Save as File")
	$MenuButtonFile.get_popup().add_item("Quit")
	
	$MenuButtonFile.get_popup().connect("id_pressed", self, "_on_item_pressed")
	

func _on_item_pressed(id):
	print('hello')
	print(id)
	var item_name = $MenuButtonFile.get_popup().get_item_text(id)
	print("item_name:" + item_name)
	
	if item_name == 'Open File':
		$FileDialog.popup()
	elif item_name == 'Save as File':
		$SaveDialog.popup()
	elif item_name == 'Quit'
			

	


func _on_FileDialog_file_selected(path):
	var f = File.new()
	f.open(path, 1)
	$TextEdit.text = f.get_as_text()
	f.close()


func _on_SaveDialog_file_selected(path):
	var f= File.new()
	f.open(path, 2)
	f.store_string($TextEdit.text)
	f.close()
	

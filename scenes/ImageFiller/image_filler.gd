extends Node


const IMAGE_PATH: String = "res://assets/glitch/";


func _ready() -> void:
	var dir: DirAccess = DirAccess.open(IMAGE_PATH);
	
	var ifl: ImageFilesList = ImageFilesList.new();
	
	if dir:
		var files: PackedStringArray = dir.get_files();
		
		for fn in files:
			ifl.add_filename(IMAGE_PATH + fn);
		
	ResourceSaver.save(ifl, "res://resources/iamge_files_list.tres")

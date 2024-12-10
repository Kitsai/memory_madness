class_name ImageFilesList extends Resource

@export var file_names: Array[String]

func add_filename(fn: String) -> void:
	if not '.import' in fn:
		file_names.append(fn)

func get_file_names() -> Array[String]:
	return file_names;

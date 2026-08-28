extends Label

func _process(delta: float) -> void:
	text = str(global.shots)
	set("theme_override_colors/font_color", Color.LIME_GREEN)

extends Spatial

onready var hours_pivot = get_node("HoursArmPivot")
onready var minutes_pivot = get_node("MinutesArmPivot")
onready var seconds_pivot = get_node("SecondsArmPivot")

const hours_to_radians = deg2rad(-30)
const minutes_to_radians = deg2rad(-6)
const seconds_to_radians = deg2rad(-6)

func _process(delta):
	var time = OS.get_time()
	hours_pivot.set_rotation(Vector3(0, 0, hours_to_radians * time.hour))
	minutes_pivot.set_rotation(Vector3(0, 0, minutes_to_radians * time.minute))
	seconds_pivot.set_rotation(Vector3(0, 0, seconds_to_radians * time.second))


extends Node

static func randomColor(alpha=1) -> Color:
	return Color(rand_range(0, 1), rand_range(0, 1), rand_range(0, 1), alpha)

static func randomVec3(a, b, c=0):
	return Vector3(rand_range(0, a), rand_range(0, b), rand_range(0, c))

static func eqivalentTriangle(center, radius):
	center.x += 200
	center.y += 200
	var a = Vector3(center.x, center.y + radius, center.z)
	var b = Vector3(center.x + radius, center.y - radius, center.z)
	var c = Vector3(center.x - radius, center.y - radius, center.z)
	return [a, b, c]

static func randomVec2(a, b):
	return Vector2(rand_range(0, a), rand_range(0, b))

static func getFPS():
	return Performance.get_monitor(Performance.TIME_FPS)

static func getDrawCall():
	return Performance.get_monitor(Performance.RENDER_2D_DRAW_CALLS_IN_FRAME)

static func dirVec():
	var direction = Vector2(0, 0)
	if Input.is_action_pressed("down"):
		direction.y -= 1
	if Input.is_action_pressed("up"):
		direction.y += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("right"):
		direction.x += 1
	return direction

static func drawPlus(center: Vector2, size: float, color: Color=Color(1, 0.2, 0.1)):
	Debug.drawLine(center - Vector2(size, 0), center + Vector2(size, 0), color, 1)
	Debug.drawLine(center - Vector2(0, size), center + Vector2(0, size), color, 1)

static func lookAtSmooth(node: Node2D, look_at: Vector2, t: float):
	var angle =look_at.angle_to_point(node.global_position)
	node.rotation = lerp_angle(node.rotation, angle, t)

static func angleToTarget(src:Vector2,target:Vector2):
	return target.angle_to_point(src)
extends Node


static func randomColor(alpha = 1) -> Color:
	return Color(rand_range(0, 1), rand_range(0, 1), rand_range(0, 1), alpha)


static func randomVec3(a, b, c = 0):
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

s2d(width, height, user_ctx):
    host_call("s2d.sdl_simple", width, height, user_ctx).

s2d_set_user_ctx(user_ctx):
    host_call("s2d.sdl_set_user_ctx", user_ctx).

s2d_set_color(r, g, b):
    host_call("s2d.sdl_set_color", r, g, b).

s2d_point(x, y):
    host_call("s2d.sdl_point", x, y).

s2d_line(x1, y1, x2, y2):
    host_call("s2d.sdl_line", x1, y1, x2, y2).

s2d_rect(x, y, w, h):
    host_call("s2d.sdl_rect", x, y, w, h).

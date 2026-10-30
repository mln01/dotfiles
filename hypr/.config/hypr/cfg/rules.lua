---------------------
-- workspace rules --
---------------------
hl.window_rule({
	name = "workspace-1",
	match = {
		class = "kitty",
	},
	workspace = 1,
})

hl.window_rule({
	name = "workspace-2",
	match = {
		class = "brave-origin",
	},
	workspace = 2,
})

hl.window_rule({
	name = "workspace-3",
	match = {
		class = "dev.zed.Zed",
	},
	workspace = 3,
})

hl.window_rule({
	name = "workspace-4",
	match = {
		class = "^(org.pwmt.zathura|notion|notion-calendar)$",
	},
	workspace = 4,
})

hl.window_rule({
	name = "workspace-5",
	match = {
		class = "^(vesktop)$",
	},
	workspace = 5,
})

hl.window_rule({
	name = "workspace-10",
	match = {
		class = "cider",
	},
	workspace = 10,
})

hl.workspace_rule({
	workspace = "7",
	monitor = "HDMI-A-1",
	default = true,
})

--------------------
-- floating rules --
--------------------

hl.window_rule({
	name = "float-center-small",

	match = {
		class = "^(xdg-desktop-portal-gtk)$",
	},

	float = true,
	center = true,
	size = { "(monitor_w*0.3)", "(monitor_h*0.4)" },
})

hl.window_rule({
	name = "float-center-medium",

	match = {
		class =
		"^(org.keepassxc.KeePassXC|io.ente.auth|proton-pass|bluetui|wifitui|wiremix|waypaper|org.localsend.localsend_app|nemo|org.xfce.ristretto)$",
	},

	float = true,
	center = true,
	size = { "(monitor_w*0.4)", "(monitor_h*0.5)" },
})

hl.window_rule({
	name = "float-center-large",

	match = {
		class = "^(vesktop)$",
	},

	float = true,
	center = true,
	size = { "(monitor_w*0.7)", "(monitor_h*0.8)" },
})

---------------------------------
-- some useful rules from wiki --
---------------------------------

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name           = "suppress-maximize-events",
	match          = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name     = "fix-xwayland-drags",
	match    = {
		class      = "^$",
		title      = "^$",
		xwayland   = true,
		float      = true,
		fullscreen = false,
		pin        = false,
	},

	no_focus = true,
})

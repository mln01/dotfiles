local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "term-w1",

    match = {
        class = "com.mitchellh.ghostty",
    },

    workspace = 1,
})

hl.window_rule({
    name = "browser-w2",

    match = {
        class = "brave-origin-nightly",
    },

    workspace = 2,
})

hl.window_rule({
    name = "zed-w3",

    match = {
        class = "dev.zed.Zed",
    },

    workspace = 3,
})

hl.window_rule({
    name = "fm-w5",

    match = {
        class = "nemo",
    },

    workspace = 5,
})

hl.window_rule({
    name = "music-w10",

    match = {
        class = "cider",
    },

    workspace = 10,
})

hl.window_rule({
    name = "localsend-w8",

    match = {
        class = "localsend",
    },

    workspace = 8,
})

hl.config({
    general = {
        gaps_in          = 2,
        gaps_out         = 2,

        border_size      = 3,

        col              = {
            active_border = blue,
            inactive_border = crust,
        },

        resize_on_border = false,

        allow_tearing    = false,

        layout           = "scrolling",
    },

    decoration = {
        rounding         = 16,
        rounding_power   = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow           = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur             = {
            enabled  = false,
            size     = 3,
            passes   = 1,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
    },
})

hl.config({
  xwayland = {
    force_zero_scaling = true
  }
})

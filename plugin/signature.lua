-- Floating window
--[[
cfg = {
    floating_window = true, 
    floating_window_above_cur_line = true, 
    floating_window_off_x = 0, 
    floating_window_off_y = 0,
    handler_opts = {
        border = "none"   -- double, rounded, single, shadow, none, or a table of borders
    },

    close_timeout = 4000, 
    hint_enable = false, 
    zindex = 200, 
    timer_interval = 60, 
}
--]]

cfg = {
    floating_window = false, 
    close_timeout = 4000, 
    hint_enable = true, -- virtual hint enable
    hint_prefix = "",  -- Panda for parameter, NOTE: for the terminal not support emoji, might crash
    hint_scheme = "String",
    hi_parameter = "LspSignatureActiveParameter",
    zindex = 200, 
    timer_interval = 60, 
}
require'lsp_signature'.setup(cfg) 

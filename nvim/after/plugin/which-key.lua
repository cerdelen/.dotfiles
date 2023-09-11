local wk = require("which-key")

wk.register({
    a = "add current buffer to Harpoon (only in buffer)",
    u = "UndooTree Toggle",
    p = {
        name = "Finding Files", -- optional group name
        f = "Telescope", -- just a label. don't create any mapping
        s = "Grep all Files", -- same as above
        v = "Vim Filetree",
        g = "Telescope Git",
    },
}, { prefix = "<leader>" })

local wk = require("which-key")

wk.register({
  p = {
    name = "Finding Files", -- optional group name
    f = "Telescope", -- just a label. don't create any mapping
    s = "Grep all Files", -- same as above
    v = "Vim Filetree",
    g = "Telescope Git",
  },
}, { prefix = "<leader>" })

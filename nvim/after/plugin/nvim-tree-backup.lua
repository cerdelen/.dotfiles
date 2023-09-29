
-- -- import nvim-tree plugin safely
-- local setup, nvimtree = pcall(require, "nvim-tree")
-- if not setup then
--   return
-- end

-- -- recommended settings from nvim-tree documentation
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- -- change color for arrows in tree to light blue
-- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- -- configure nvim-tree
-- nvimtree.setup({
--     disable_netrw = true,
--     hijack_netrw = true,
--     -- open_on_setup = false,
--     -- ignore_ft_on_setup = { -- "startify", "dashboard", "alpha",
--     -- },
--     open_on_tab = false,
--     hijack_cursor = false,
--     update_cwd = true,
--     hijack_directories = {
--         enable = true,
--         auto_open = true,
--     },
--     diagnostics = {
--         enable = true,
--         icons = {
--             hint = "",
--             info = "",
--             warning = "",
--             error = "",
--         },
--     },
--     update_focused_file = {
--         enable = true,
--         update_cwd = true,
--         ignore_list = {},
--     },
--     git = {
--         enable = true,
--         ignore = true,
--         timeout = 500,
--     },
--     view = {
--         width = 30,
--         -- height = 30,
--         -- hide_root_folder = false,
--         side = "right",
--         -- auto_resize = true,
--         -- mappings = {
--             -- custom_only = false,
--             -- list = {
--             -- { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
--             -- { key = "h", cb = tree_cb "close_node" },
--             -- { key = "v", cb = tree_cb "vsplit" },
--             -- },
--         -- },
--         number = false,
--         relativenumber = false,
--     },
--     -- actions = {
--     --     quit_on_open = true,
--     --     window_picker = { enable = false },
--     -- },
--     renderer = {
--         highlight_git = true,
--         root_folder_modifier = ":t",
--         icons = {
--             show = {
--                 file = true,
--                 folder = true,
--                 folder_arrow = true,
--                 git = true,
--             },
--             glyphs = {
--                 default = "",
--                 symlink = "",
--                 git = {
--                     unstaged = "",
--                     staged = "S",
--                     unmerged = "",
--                     renamed = "➜",
--                     deleted = "",
--                     untracked = "U",
--                     ignored = "◌",
--                 },
--                 folder = {
--                     default = "",
--                     open = "",
--                     empty = "",
--                     empty_open = "",
--                     symlink = "",
--                 },
--             }
--         }
--     }



--   -- -- change folder arrow icons
--   -- renderer = {
--   --   icons = {
--   --     glyphs = {
--   --       folder = {
--   --         arrow_closed = "", -- arrow when folder is closed
--   --         arrow_open = "", -- arrow when folder is open
--   --       },
--   --     },
--   --   },
--   -- },
--   -- -- disable window_picker for
--   -- -- explorer to work well with
--   -- -- window splits
--   -- actions = {
--   --   open_file = {
--   --     window_picker = {
--   --       enable = false,
--   --     },
--   --   },
--   -- },
--   -- 	git = {
--   -- 		ignore = false,
--   -- 	},
-- })

-- -- open nvim-tree on setup

-- local function open_nvim_tree(data)
--   -- buffer is a [No Name]
--   local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

--   -- buffer is a directory
--   local directory = vim.fn.isdirectory(data.file) == 1

--   if not no_name and not directory then
--     return
--   end

--   -- change to the directory
--   if directory then
--     vim.cmd.cd(data.file)
--   end

--   -- open the tree
--   require("nvim-tree.api").tree.open()
-- end

-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

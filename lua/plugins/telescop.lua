local conf = require("telescope.config").values

-- Add --fixed-strings to disable regex searching
table.insert(conf.vimgrep_arguments, "--fixed-strings")

return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      local telescope = require("telescope")

      -- Load fzf extension
      telescope.load_extension("fzf")

      -- Override the default vimgrep_arguments
      telescope.setup({
        defaults = {
          vimgrep_arguments = conf.vimgrep_arguments,
        },
      })
    end,
  },
}

return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    cmp.event:on("menu_opened", function() vim.b.copilot_suggestion_hidden = true end)

    cmp.event:on("menu_closed", function() vim.b.copilot_suggestion_hidden = false end)

    opts.mapping = cmp.mapping.preset.insert {
      ["<C-x>"] = cmp.mapping.complete(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<CR>"] = cmp.mapping.confirm { select = true },
    }
    opts.performance = {
      debounce = 0,
      throttle = 0,
    }
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp" },
      -- { name = "buffer" },
      -- { name = "path" },
      -- { name = "treesitter" },
    }
    return opts
  end,
}

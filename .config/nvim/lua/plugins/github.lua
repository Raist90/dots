return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-nvim-theme",
    config = function()
      require("github-theme").setup {
        options = {
          transparent = true,
        },
      }
    end,
  },
}

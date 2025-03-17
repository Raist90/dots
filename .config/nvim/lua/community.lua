-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- Colorschemes
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  -- Motions
  { import = "astrocommunity.motion.flash-nvim" },
  -- Git
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  -- Completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- Scroll
  { import = "astrocommunity.scrolling.mini-animate" },
  -- Packs
  { import = "astrocommunity.pack.json" },
  -- import/override with your plugins folder
}

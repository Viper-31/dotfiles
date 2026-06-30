if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -NoProfile -ExecutionPolicy Bypass -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -NoProfile -ExecutionPolicy Bypass -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
  }
end

--vim.api.nvim_create_autocmd("VimEnter", {
--  callback = function()
--    vim.cmd(":NvimTreeToggle")
--  end,
--})

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "kdheepak/lazygit.nvim",
    lazy=true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "rmagatti/auto-session",
    lazy = false, -- False to run immediately when Neovim opens
    opts = {
      auto_restore_enabled = true,
      auto_save_enabled = true,
      suppressed_dirs = { "~/", "~/Downloads", "/", "/tmp" },

      -- Prevents NvimTree from breaking or duplicating during session restore
      session_lens = {
        load_on_setup = false,
      },
    },
  },
}

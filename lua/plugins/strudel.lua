return {
  {
    "gruvw/strudel.nvim",
    build = "npm install",
    config = function()
      require("strudel").setup({
        browser_exec_path = "/opt/google/chrome/google-chrome",
        update_on_save = true
      })
    end,
  }
}

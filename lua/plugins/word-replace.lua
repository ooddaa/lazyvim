return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.keymap.set("n", "<leader>s", function()
        local cword = vim.fn.expand("<cword>")
        local replacement = vim.fn.input("Replace '" .. cword .. "' with: ")
        if replacement ~= "" then
          vim.cmd(":%s/\\<" .. cword .. "\\>/" .. replacement .. "/g")
          print("Replaced all instances of '" .. cword .. "' with '" .. replacement .. "'")
        end
      end, { desc = "Replace word under cursor" })
    end,
  },
}

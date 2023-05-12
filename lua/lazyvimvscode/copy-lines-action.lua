return {
  "lazyvimvscode",
  keys = {
    { "<s-a-j>", ":copy.<cr>" },
    { "<s-a-j>", ":copy.-v:count<cr>gv", mode = { "v" } },
    { "<s-a-k>", ":copy.-1<cr>" },
    { "<s-a-k>", ":copy.+v:count<cr>gv", mode = { "v" } },
  },
}

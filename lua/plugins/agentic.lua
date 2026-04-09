return {
  "carlos-algms/agentic.nvim",
  opts = {
    provider = "gemini-acp",
  },
  keys = {
    {
      "<leader>aa",
      function() require("agentic").toggle() end,
      mode = { "n", "v", "i" },
      desc = "Toggle Agentic Chat"
    },
    {
      "<leader>ac",
      function() require("agentic").add_selection_or_file_to_context() end,
      mode = { "n", "v" },
      desc = "Add file or selection to context"
    },
    {
      "<leader>an",
      function() require("agentic").new_session() end,
      mode = { "n", "v", "i" },
      desc = "New Agentic Session"
    },
    {
      "<leader>ad",
      function() require("agentic").add_current_line_diagnostics() end,
      mode = { "n" },
      desc = "Add diagnostics to context"
    },
  },
}

return {
    "nvimdev/dashboard-nvim",
    lazy = false, -- Prevent lazy-loading to properly handle stdin
    opts = function()
        local logo = [[
 ██████╗ ██████╗ ███████╗███╗   ██╗██████╗  ██████╗
 ██╔══██╗██╔══██╗██╔════╝████╗  ██║██╔══██╗██╔═══██╗
 ██████╔╝██████╔╝█████╗  ██╔██╗ ██║██║  ██║██║   ██║
 ██╔══██╗██╔══██╗██╔══╝  ██║╚██╗██║██║  ██║██║   ██║
 ██████╔╝██║  ██║███████╗██║ ╚████║██████╔╝╚██████╔╝
 ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝╚═════╝  ╚═════╝

       Brendo Bittencourt | Data Engineer
    ]]
        -- Adjusted ASCII art to align with the logo
        local art_criw = [[
  _______________________________
 /\                              \
/++\    __________________________\
\+++\   \ ************************/
 \+++\   \___________________ ***/
  \+++\   \             /+++/***/
   \+++\   \           /+++/***/
    \+++\   \         /+++/***/
     \+++\   \       /+++/***/
      \+++\   \     /+++/***/
       \+++\   \   /+++/***/
        \+++\   \ /+++/***/
         \+++\   /+++/***/
          \+++\ /+++/***/
           \+++++++/***/
            \+++++/***/
             \+++/***/
              \+/___/
]]

        local arts = { art_criw }
        local random = math.random(1, #arts)

        logo = string.rep("\n", 2) .. logo .. "\n" .. arts[random]

        local opts = {
            theme = "doom",
            hide = {
                statusline = false,
            },
            config = {
                header = vim.split(logo, "\n"),
                center = {
                },
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return { "loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                end,
            },
        }

        for _, button in ipairs(opts.config.center) do
            button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
            button.key_format = "  %s"
        end

        -- open dashboard after closing lazy
        if vim.o.filetype == "lazy" then
            vim.api.nvim_create_autocmd("WinClosed", {
                pattern = tostring(vim.api.nvim_get_current_win()),
                once = true,
                callback = function()
                    vim.schedule(function()
                        vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
                    end)
                end,
            })
        end

        return opts
    end,
}

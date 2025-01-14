return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      --    "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      'nvim-neotest/neotest-jest',
    },
    config = function(_, _)
      require('neotest').setup({
        adapters = {
          require('neotest-jest')({
            jestConfigFile = function()
              if vim.fn.filereadable(vim.fn.getcwd() .. "/jest/unit/jest.config.ts") then
                vim.notify(vim.fn.getcwd() .. "/jest/unit/jest.config.ts")
                return vim.fn.getcwd() .. "/jest/unit/jest.config.ts"
              end

              return vim.fn.getcwd() .. "/jest.config.ts"
            end,
          })
        },
        quickfix = {
          -- open = function()
          --   vim.cmd("copen")
          -- end
        }
      })
    end,
    keys = {
      { "<leader>t",  "",                                                              desc = "test" },
      { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end,   desc = "Run File" },
      { "<leader>to", function() require("neotest").output_panel.toggle() end,         desc = "Show Output" },
      { "<leader>ts", function() require("neotest").summary.toggle() end,              desc = "Show Summary" },
      { "<leader>td", function() require("neotest").run.run({ strategy = "dap" }) end, desc = "Debug Test" },
    }
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui"
    },
    opts = function()
      local dap = require("dap")
      dap.adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          -- 💀 Make sure to update this path to point to your installation
          args = { vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js", "${port}" }
        }
      }
      if not dap.adapters["node"] then
        dap.adapters["node"] = function(cb, config)
          if config.type == "node" then
            config.type = "pwa-node"
          end
          local nativeAdapter = dap.adapters["pwa-node"]
          if type(nativeAdapter) == "function" then
            nativeAdapter(cb, config)
          else
            cb(nativeAdapter)
          end
        end
      end

      local js_filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" }

      local vscode = require("dap.ext.vscode")
      vscode.type_to_filetypes["node"] = js_filetypes
      vscode.type_to_filetypes["pwa-node"] = js_filetypes

      for _, language in ipairs(js_filetypes) do
        if not dap.configurations[language] then
          dap.configurations[language] = {
            {
              type = "pwa-node",
              request = "launch",
              name = "Launch file",
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              type = "pwa-node",
              request = "attach",
              name = "Attach",
              processId = require("dap.utils").pick_process,
              cwd = "${workspaceFolder}",
            },
          }
        end
      end
    end,
    config = function() end,
    keys = {
      { "<leader>tb", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" }
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    keys = {
      { "<leader>tu", function() require("dapui").toggle() end, desc = "Toggle Dap UI" }
    },
    opts = {},
    config = function(_, opts)
      require("dapui").setup(opts)
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = "williamboman/mason.nvim",
    opts = {
      ensure_installed = { 'js' },
      automatic_installation = true,
      handlers = {}
    },
  }
}

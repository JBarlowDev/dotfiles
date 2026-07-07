local mason = vim.fn.stdpath("data") .. "/mason/packages"

local bundles = vim.fn.glob(
    mason .. "/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
    false,
    true
)

return {
  init_options = {
    bundles = bundles
  }
}

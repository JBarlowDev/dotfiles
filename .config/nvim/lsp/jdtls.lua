local mason = vim.fn.stdpath('data') .. '/mason/packages'

-- Debuging
local bundles = vim.fn.glob(
  mason .. '/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar',
  false,
  true
)

-- Running tests
local java_test_bundles = vim.split(vim.fn.glob(mason .. '/java-test/extension/server/*.jar', 1), '\n')
local excluded = {
  'com.microsoft.java.test.runner-jar-with-dependencies.jar',
  'jacocoagent.jar',
}
for _, java_test_jar in ipairs(java_test_bundles) do
  local fname = vim.fn.fnamemodify(java_test_jar, ':t')
  if not vim.tbl_contains(excluded, fname) then
    table.insert(bundles, java_test_jar)
  end
end
-- vim.notify(table.concat(bundles, '\n'))

return {
  init_options = {
    bundles = bundles
  }
}

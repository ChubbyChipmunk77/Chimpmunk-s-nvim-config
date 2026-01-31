local lspconfig = require("lspconfig")

lspconfig.jdtls.setup({
  cmd = { "jdtls" },
  root_dir = lspconfig.util.root_pattern(".git", "pom.xml", "build.gradle"),

  settings = {
    java = {
      eclipse = { downloadSources = true },
      configuration = { updateBuildConfiguration = "interactive" },
      maven = { downloadSources = true },
      implementationsCodeLens = { enabled = true },
      referencesCodeLens = { enabled = true },

      -- !! UPDATED SECTION FOR JAVADOC LINKS !!
      references = {
        includeDecompiledSources = true,
        -- Configure Javadoc links for the standard library.
        -- CHANGE THE '21' IN THE URL BELOW if you use a different JDK version.
        links = {
          ["https://docs.oracle.com/en/java/javase/25/docs/api/"] = true,
        },
      },
      -- !! END UPDATED SECTION !!
    },
  },

  init_options = {
    bundles = {},
  },
})

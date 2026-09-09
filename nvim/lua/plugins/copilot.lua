return {
  "github/copilot.vim",
  opts = {},
  config = function()
    vim.g.copilot_proxy = "http://fortiproxy.intranet.nav.gov.hu:8080"
  end
}

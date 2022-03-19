######################################################################
#<
#
# Function: p6df::modules::pagerduty::deps()
#
#>
######################################################################
p6df::modules::pagerduty::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::pagerduty::vscodes()
#
#>
######################################################################
p6df::modules::pagerduty::vscodes() {
  true
}

######################################################################
#<
#
# Function: p6df::modules::pagerduty::langs()
#
#  Depends:	 p6_github
#  Environment:	 P6_DFZ_SRC_FOCUSED_DIR
#>
######################################################################
p6df::modules::pagerduty::langs() {

  p6_js_npm_global_install "pagerduty-cli"

  p6_github_util_org_repos_clone "PagerDuty" "$P6_DFZ_SRC_FOCUSED_DIR"
}

######################################################################
#<
#
# Function: p6df::modules::pagerduty::init()
#
#>
######################################################################
p6df::modules::pagerduty::init() {
  true
}

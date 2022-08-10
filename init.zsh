# shellcheck shell=bash
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
# Function: p6df::modules::pagerduty::langs()
#
#>
######################################################################
p6df::modules::pagerduty::langs() {

  p6_js_npm_global_install "pagerduty-cli"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::pagerduty::clones()
#
#  Environment:	 P6_DFZ_SRC_FOCUSED_DIR
#>
######################################################################
p6df::modules::pagerduty::clones() {

  p6_github_login_clone "PagerDuty" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}

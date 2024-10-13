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
# Function: p6df::modules::pagerduty::clones()
#
#  Environment:	 P6_DFZ_SRC_FOCUSED_DIR
#>
######################################################################
p6df::modules::pagerduty::clones() {

  p6_github_login_clone "PagerDuty" "$P6_DFZ_SRC_FOCUSED_DIR"
  p6_github_login_clone "PagerDuty-Samples" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}

######################################################################
#<
#
# Function: str str = p6df::modules::pagerduty::prompt::line()
#
#  Returns:
#	str - str
#
#  Environment:	 PD_API_KEY
#>
######################################################################
p6df::modules::pagerduty::prompt::line() {

  local str="pagerduty:        pgollucci"
  if ! p6_string_blank "$PD_API_KEY"; then
    str="$str [api]"
  fi

  p6_return_str "$str"
}

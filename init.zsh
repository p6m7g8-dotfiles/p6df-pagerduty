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

  p6_github_cli_parallel_clone "PagerDuty" "$P6_DFZ_SRC_FOCUSED_DIR"
  p6_github_cli_parallel_clone "PagerDuty-Samples" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}

######################################################################
#<
#
# Function: str str = p6df::modules::pagerduty::prompt::mod()
#
#  Returns:
#	str - str
#
#  Environment:	 P6_DFZ_PROFILE_PAGERDUTY PD_API_KEY
#>
######################################################################
p6df::modules::pagerduty::prompt::mod() {

  local str
  if p6_string_blank_NOT "$P6_DFZ_PROFILE_PAGERDUTY"; then
    if p6_string_blank_NOT "$PD_API_KEY"; then
      str="pagerduty:\t  $P6_DFZ_PROFILE_PAGERDUTY:"
      str=$(p6_string_append "$str" "api" " ")
    fi
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::pagerduty::profile::on(profile, token)
#
#  Args:
#	profile -
#	token -
#
#  Environment:	 P6_DFZ_PROFILE_PAGERDUTY PD_API_KEY
#>
######################################################################
p6df::modules::pagerduty::profile::on() {
  local profile="$1"
  local token="$2"

  p6_env_export "P6_DFZ_PROFILE_PAGERDUTY" "$profile"
  p6_env_export "PD_API_KEY" "$token"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::pagerduty::profile::off()
#
#  Environment:	 P6_DFZ_PROFILE_PAGERDUTY PD_API_KEY
#>
######################################################################
p6df::modules::pagerduty::profile::off() {

  p6_env_export_un P6_DFZ_PROFILE_PAGERDUTY
  p6_env_export_un PD_API_KEY

  p6_return_void
}

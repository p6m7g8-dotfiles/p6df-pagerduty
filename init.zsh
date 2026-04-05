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
# Function: words pagerduty = p6df::modules::pagerduty::profile::mod()
#
#  Returns:
#	words - pagerduty
#
#  Environment:	 PD_API_KEY
#>
######################################################################
p6df::modules::pagerduty::profile::mod() {

  p6_return_words 'pagerduty' '$PD_API_KEY'
}

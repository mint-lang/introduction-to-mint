store Sandbox.Route {
  state sandboxId : String = "sGpl-oxEKKVGgQ"

  fun goToSandbox (sandboxId : String) {
    next { sandboxId = sandboxId }
  }
}

store Sandbox.Route {
  /* Initial State Is Hello World Example */
  state sandboxId : String = "sGpl-oxEKKVGgQ"

  fun goToSandbox (sandboxId : String) {
    next { sandboxId = sandboxId }
  }
}

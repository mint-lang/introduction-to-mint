component Sandbox {
  connect Sandbox.Route exposing { sandboxId }

  style embed {
    width: 100%;
  }

  fun render {
    <embed::embed
      type="text/html"
      src="https://sandbox.mint-lang.com/sandboxes/#{sandboxId}">

      "Sandbox Could Not Load"

    </embed>
  }
}

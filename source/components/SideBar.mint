component SideBar {
  connect Sandbox.Route exposing { goToSandbox }

  property sections : Array(Section)

  style sidebar {
    background-color: var(--bg-color-1);
  }

  style header {
    height: 50px;
    text-align: center;
    background-color: var(--bg-color-2);
    border-bottom: 1px solid #1e2128;
    font-size: 1.25em;
    color: var(--font-color);
    padding: .25em;
    width: 12.5em;

    display: flex;
    align-items: center;
    justify-content: space-evenly;
  }

  style sections {
    color: var(--font-color);
    overflow-y: auto;
    /* Viewport height - header height */
    height: calc(100vh - 50px);
    padding-left: .75em;
  }

  style section {
    font-size: 1.25em;
    margin: 2rem 0 1rem 0;
    text-transform: uppercase;
    letter-spacing: 1px;
  }

  style examples {

    li {
      margin-bottom: .75em;


      a {
        color: var(--font-color);
        font-size: 1.15em;
      }
    }
  }

  fun render {
    <nav::sidebar>
      <header::header>
        "Introduction to Mint"
      </header>

      <ul::sections>
        for (section of sections) {
          <>
            <li::section>
              "#{section.title}"
            </li>

            <ul::examples>
              for (example of section.examples) {
                <li>
                  <a
                    href="#"
                    onClick={(event : Html.Event) { goToSandbox(example.sandboxId) }}>

                    "#{example.name}"

                  </a>
                </li>
              }
            </ul>
          </>
        }
      </ul>
    </nav>
  }
}

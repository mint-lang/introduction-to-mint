component SideBar {
  connect Sandbox.Route exposing { goToSandbox }

  property sections : Array(Section)

  style sidebar {
    /* overflow-y: auto; */
    background-color: #30353e;
  }

  style header {
    height: 50px;
    text-align: center;
    background-color: #3c424d;
    border-bottom: 1px solid #1e2128;

    display: flex;
    align-items: center;
    justify-content: space-evenly;
  }

  style sections {
    color: #EEE;
  }

  style section {
    font-size: 1.4rem;
    margin: 2rem 0 1rem 0;
  }

  style examples {
    margin: 0;
    padding: 0;

    li {
      margin-bottom: 0.6rem;

      a {
        color: #EEE;
      }
    }
  }

  fun render {
    <nav::sidebar>
      <header::header>
        <img
          height="30"
          src="https://cdn.jsdelivr.net/gh/sveltejs/branding@master/svelte-logo.svg"/>

        <img
          height="20"
          src="arrow-right.png"/>
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

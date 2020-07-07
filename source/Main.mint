record Section {
  title : String,
  examples : Array(Example)
}

record Example {
  name : String,
  sandboxId : String
}

component Main {
  state content : String = ""

  style main {
    display: flex;
    height: 100%;
  }

  fun loadContent (url : String) {
    sequence {
      response =
        url
        |> Http.get()
        |> Http.send()

      next { content = response.body }
    } catch Http.ErrorResponse => error {
      next {  }
    }
  }

  fun componentDidMount {
    sequence {
      loadContent("/content.json")
    }
  }

  fun render : Html {
    try {
      json =
        Json.parse(content)
        |> Maybe.toResult("Content Decode Error")

      sections =
        decode json as Array(Section)

      <main::main>
        <SideBar sections={sections}/>
        <Sandbox/>
      </main>
    } catch Object.Error => error {
      <div>
        "Failed To Decode Content"
      </div>
    } catch String => error {
      <div>
        "Invalid JSON"
      </div>
    }
  }
}

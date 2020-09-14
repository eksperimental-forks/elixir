# Returns config for Elixir docs
[
  extras: Path.wildcard("lib/elixir/pages/*.md") ++ ["CHANGELOG.md"],
  groups_for_functions: [
    Guards: &(&1[:guard] == true)
  ],
  skip_undefined_reference_warnings_on: ["lib/elixir/pages/compatibility-and-deprecations.md"],
  groups_for_modules: [
    # [Kernel, Kernel.SpecialForms],

    "Basic Types": [
      Atom,
      Base,
      Bitwise,
      Date,
      DateTime,
      Exception,
      Float,
      Function,
      Integer,
      Module,
      NaiveDateTime,
      Record,
      Regex,
      String,
      Time,
      Tuple,
      URI,
      Version,
      Version.Requirement
    ],
    "Collections & Enumerables": [
      Access,
      Date.Range,
      Enum,
      Keyword,
      List,
      Map,
      MapSet,
      Range,
      Stream
    ],
    "IO & System": [
      File,
      File.Stat,
      File.Stream,
      IO,
      IO.ANSI,
      IO.Stream,
      OptionParser,
      Path,
      Port,
      StringIO,
      System
    ],
    "Code & Macros": [
      Code,
      Kernel.ParallelCompiler,
      Macro,
      Macro.Env
    ],
    "Processes & Applications": [
      Agent,
      Application,
      Config,
      Config.Provider,
      Config.Reader,
      DynamicSupervisor,
      GenServer,
      Node,
      Process,
      Registry,
      Supervisor,
      Task,
      Task.Supervisor
    ],
    Calendars: [
      Calendar,
      Calendar.ISO,
      Calendar.TimeZoneDatabase,
      Calendar.UTCOnlyTimeZoneDatabase
    ],
    Protocols: [
      Inspect.Algebra,
      Inspect.Opts,
      Protocol
    ],
    "Protocol Implementations": [
      Collectable,
      Enumerable,
      Inspect,
      List.Chars,
      String.Chars
    ]

    ## Automatically detected groups

    # Deprecated: [
    #   Behaviour,
    #   Dict,
    #   GenEvent,
    #   HashDict,
    #   HashSet,
    #   Set,
    #   Supervisor.Spec
    # ]
  ]
]

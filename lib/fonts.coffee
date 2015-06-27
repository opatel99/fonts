module.exports =

  config:
    preview:
      type: 'string'
      default: 'The Quick brown fox { 0 !== "O" }'
    fontFamily:
      description: 'Use one of the fonts available in this package.'
      type: 'string'
      default: 'Source Code Pro'
      enum: [
        'Anka/Coder'
        'Anonymous Pro'
        'Aurulent Sans Mono'
        'Average Mono'
        'BPmono'
        'Bitstream Vera Sans Mono'
        'Consolamono'
        'Cousine'
        'Cutive Mono'
        'DejaVu Mono'
        'Droid Sans Mono'
        'Effects Eighty'
        'Fantasque Sans Mono'
        'Fifteen'
        'Fira Mono'
        'Fixedsys'
        'GNU Freefont'
        'GNU Unifont'
        'Generic Mono'
        'Hermit Light'
        'Hermit'
        'Inconsolata'
        'Inconsolata-g'
        'Latin Modern Mono Light'
        'Latin Modern Mono'
        'Lekton'
        'Liberation Mono'
        'Luxi Mono'
        'M+ Light'
        'M+ Medium'
        'M+ Thin'
        'M+'
        'Meslo'
        'Monofur'
        'NotCourierSans'
        'Nova Mono'
        'Oxygen Mono'
        'PT Mono'
        'Profont'
        'Proggy Clean'
        'Quinze'
        'Roboto Mono'
        'Roboto Mono Light'
        'Roboto Mono Thin'
        'Share Tech Mono'
        'Source Code Pro Extra Light'
        'Source Code Pro Light'
        'Source Code Pro Medium'
        'Source Code Pro'
        'Sudo'
        'TeX Gyre Cursor'
        'Ubuntu Mono'
        'VT323'
        'Verily Serif Mono'
        'saxMono'
      ]

  activate: (state) ->

    # code in separate file so deferral keeps activation time down
    atom.packages.onDidActivateInitialPackages ->
      Runner = require './runner'
      Runner.run()

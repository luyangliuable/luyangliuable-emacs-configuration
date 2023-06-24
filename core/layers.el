(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; better-defaults
     ;; csv
     ;; docker
     ;; ipython-notebook
     ;; kotlin
     ;; plantuml
     ;; yaml
     ;; asm
     ;; php
     ;; ruby
     ;; xkcd
     ;; auto-completion
     c-c++
     csharp
     csv
     emacs-lisp
     emoji
     git
     helm
     html
     java
     javascript
     json
     markdown
     multiple-cursors
     org
     python
     react
     rust
     spell-checking
     sql
     syntax-checking
     themes-megapack
     treemacs
     typescript
     version-control
     yaml
     (lsp :variables
          lsp-lens-enable t)
     (shell :variables
            shell-default-height 25
            shell-default-position 'bottom)
     (colors :variables
             colors-colorize-identifiers 'all
             colors-enable-nyan-cat-progress-bar t))



   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(parrot
                                      ;; slime ;; May not exist anymore
                                      beacon
                                      ;; (copilot :location (recipe
                                      ;;                     :fetcher github
                                      ;;                     :repo "luyangliuable/copilot.el"
                                      ;;                     :files ("*.el" "dist")))
                                      )

   ;; (beacon :location "~/beacon")

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '( ;; ----------------------------------------------------------------
                                    ;; Mainly Redundant Themes and Less often used packages
                                    ;; To speed up emacs and save space
                                    ;; ----------------------------------------------------------------
                                    ;; aggressive-indent
                                    ;; auto-compile
                                    ;; auto-dictionary
                                    ;; auto-highlight-symbol
                                    ;; auto-yasnippet
                                    ;; blacken
                                    ;; browse-at-remote
                                    ;; bundler
                                    ;; ccls
                                    centered-cursor-mode
                                    ;; chruby
                                    ;; clean-aindent-mode
                                    ;; color-identifiers-mode
                                    ;; color-theme-sanityinc-tomorrow
                                    ;; column-enforce-mode
                                    ;; company-anaconda
                                    ;; company-c-headers
                                    ;; company-emoji
                                    ;; company-php
                                    ;; company-phpactor
                                    ;; company-rtags
                                    ;; company-web
                                    ;; company-ycmd
                                    ;; cpp-auto-include
                                    ;; cython-mode
                                    ;; define-word
                                    ;; devdocs
                                    ;; diminish
                                    ;; dired-quick-sort
                                    ;; disaster
                                    ;; doom-themes
                                    ;; dotenv-mode
                                    ;; drag-stuff
                                    ;; drupal-mode
                                    ;; dumb-jump
                                    ;; editorconfig
                                    ;; elisp-def
                                    ;; elisp-slime-nav
                                    ;; emmet-mode
                                    ;; emoji-cheat-sheet-plus
                                    ;; emojify
                                    ;; emr
                                    ;; esh-help
                                    ;; eshell-prompt-extras
                                    ;; eshell-z
                                    ;; eval-sexp-fu
                                    ;; expand-region
                                    ;; eyebrowse
                                    ;; flx-ido
                                    ;; font-lock+
                                    ;; fuzzy
                                    ;; geben
                                    ;; gendoxy
                                    ;; gh-md
                                    ;; git-gutter-fringe
                                    ;; git-link
                                    ;; git-messenger
                                    ;; git-modes
                                    ;; gnuplot
                                    ;; golden-ratio
                                    ;; google-c-style
                                    ;; google-translate
                                    ;; groovy-imports
                                    ;; hide-comnt
                                    ;; highlight-indentation
                                    ;; highlight-numbers
                                    ;; highlight-parentheses
                                    ;; hl-todo
                                    ;; hungry-delete
                                    ;; hybrid-mode
                                    ;; impatient-mode
                                    ;; importmagic
                                    ;; indent-guide
                                    ;; info+
                                    ;; inspector
                                    ;; js-doc
                                    ;; js2-refactor
                                    ;; json-mode
                                    ;; json-navigator
                                    ;; json-reformat
                                    ;; link-hint
                                    ;; live-py-mode
                                    ;; livid-mode
                                    ;; lorem-ipsum
                                    ;; macrostep
                                    ;; markdown-toc
                                    ;; mmm-mode
                                    ;; multi-term
                                    ;; mvn
                                    ;; nodejs-repl
                                    ;; nose
                                    ;; npm-mode
                                    ;; open-junk-file
                                    ;; overseer
                                    ;; paradox
                                    ;; pippel
                                    ;; popwin
                                    ;; prettier-js
                                    ;; py-isort
                                    ;; pydoc
                                    ;; pyenv-mode
                                    ;; pytest
                                    ;; quickrun
                                    ;; rainbow-delimiters
                                    ;; rainbow-identifiers
                                    ;; rake
                                    ;; rbenv
                                    ;; restart-emacs
                                    ;; robe
                                    ;; rspec-mode
                                    ;; rubocop
                                    ;; rubocopfmt
                                    ;; rvm
                                    ;; seeing-is-believing ;; Ruby gem to evaluate Ruby code
                                    ;; slim-mode ;; no idea what this is
                                    ;; smeargle
                                    ;; sphinx-doc
                                    ;; string-inflection
                                    ;; tao-theme
                                    ;; terminal-here
                                    ;; treemacs-projectile
                                    ;; uuidgen
                                    ;; volatile-highlights
                                    ;; web-beautify
                                    ;; web-mode
                                    ;; winum
                                    ;; writeroom-mode
                                    ;; x86-lookup
                                    ;; yapfify
                                    ;; zen-and-art-theme
                                    ;; zenburn-theme
                                    afternoon-theme alect-themes
                                    ample-theme groovy-mode
                                    ample-zen-theme anti-zenburn-theme
                                    apropospriate-theme badwolf-theme
                                    birds-of-paradise-plus-theme bubbleberry-theme
                                    busybee-theme cherry-blossom-theme
                                    chocolate-theme clues-theme
                                    color-theme-sanityinc-solarized csv-mode
                                    cyberpunk-theme dakrone-theme
                                    darkburn-theme darkmine-theme
                                    darkokai-theme darktooth-theme
                                    django-theme dracula-theme
                                    espresso-theme exotica-theme
                                    eziam-theme fancy-battery
                                    farmhouse-theme flatland-theme
                                    flatui-theme gandalf-theme
                                    gotham-theme grandshell-theme
                                    gruber-darker-theme gruvbox-theme
                                    hc-zenburn-theme hemisu-theme
                                    heroku-theme inkpot-theme
                                    ir-black-theme jazz-theme
                                    jbeans-theme kaolin-themes
                                    light-soap-theme lush-theme
                                    madhat2r-theme majapahit-theme
                                    material-theme maven-test-mode
                                    minimal-theme minitest ;; ruby minitest
                                    modus-themes moe-theme
                                    molokai-theme monochrome-theme
                                    monokai-theme multi
                                    mustang-theme
                                    nameless ;; Hide package namespaces in your emacs-lisp code.
                                    naquadah-theme
                                    nasm-mode ;; assembly language
                                    noctilux-theme obsidian-theme
                                    occidental-theme oldlace-theme
                                    omtose-phellack-theme phoenix-dark-mono-theme
                                    phoenix-dark-pink-theme php-auto-yasnippets
                                    php-extras phpcbf
                                    phpunit pip-requirements
                                    pipenv planet-theme
                                    plantuml-mode poetry
                                    professional-theme
                                    pug-mode ;; no idea what this is
                                    purple-haze-theme railscasts-theme
                                    rebecca-theme reverse-theme
                                    ruby-hash-syntax ruby-refactor
                                    ruby-test-mode ruby-tools
                                    sass-mode scss-mode
                                    seti-theme shell-pop
                                    smyx-theme soft-charcoal-theme
                                    soft-morning-theme soft-stone-theme
                                    solarized-theme soothe-theme
                                    spacegray-theme spotify
                                    string-edit ;; TODO this doesn't work so it is excluded
                                    subatomic-theme subatomic256-theme
                                    sublime-themes sunny-day-theme
                                    symbol-overlay symon
                                    tagedit tango-2-theme
                                    tango-plus-theme tangotango-theme
                                    toxi-theme twilight-anti-bright-theme
                                    twilight-bright-theme twilight-theme
                                    ujelly-theme underwater-theme
                                    white-sand-theme ws-butler
                                    xkcd xterm-color
                                    yaml-mode zonokai-emacs)

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages `used-but-keep-unused))

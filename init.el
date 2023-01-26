;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
(load "/Users/blackfish/myemacsconfiguration/package-management.el")

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
     ;; yaml
     ;; csv
     ;; docker
     ;; kotlin
     ;; ipython-notebook
     ;; better-defaults
     ;; plantuml
     ;; (spotify :variables
     ;;          counsel-spotify-client-id "b1df40967cc24f128afca0b5828d42d8"
     ;;          counsel-spotify-client-secret "2cb6f66e5a0c4544b71622745ea637f6")
     ;; xkcd
     ;; php
     ;; ruby
     ;; asm
     emacs-lisp
     auto-completion
     c-c++
     csharp
     csv
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
                                      slime
                                      beacon
                                      ;; (beacon :location "~/beacon")
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(;; ----------------------------------------------------------------
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
                                    ;; centered-cursor-mode
                                    ;; chruby
                                    ;; clean-aindent-mode
                                    ;; color-identifiers-mode
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
                                    ;; groovy-mode
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
                                    ;; multi-term
                                    ;; mvn
                                    ;; nose
                                    ;; open-junk-file
                                    ;; overseer
                                    ;; paradox
                                    ;; pippel
                                    ;; popwin
                                    ;; prettier-js
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
                                    ;; smeargle
                                    ;; string-inflection
                                    ;; tao-theme
                                    ;; treemacs-projectile
                                    ;; uuidgen
                                    ;; volatile-highlights
                                    ;; winum
                                    ;; yapfify
                                    ;; zen-and-art-theme
                                    ;; zenburn-theme
                                    afternoon-theme
                                    alect-themes
                                    ample-theme
                                    ample-zen-theme
                                    anti-zenburn-theme
                                    apropospriate-theme
                                    badwolf-theme
                                    birds-of-paradise-plus-theme
                                    bubbleberry-theme
                                    busybee-theme
                                    cherry-blossom-theme
                                    chocolate-theme
                                    clues-theme
                                    color-theme-sanityinc-solarized
                                    color-theme-sanityinc-tomorrow
                                    csv-mode
                                    cyberpunk-theme
                                    dakrone-theme
                                    darkburn-theme
                                    darkmine-theme
                                    darkokai-theme
                                    darktooth-theme
                                    django-theme
                                    dracula-theme
                                    espresso-theme
                                    exotica-theme
                                    eziam-theme
                                    fancy-battery
                                    farmhouse-theme
                                    flatland-theme
                                    flatui-theme
                                    gandalf-theme
                                    gotham-theme
                                    grandshell-theme
                                    gruber-darker-theme
                                    gruvbox-theme
                                    hc-zenburn-theme
                                    hemisu-theme
                                    heroku-theme
                                    inkpot-theme
                                    ir-black-theme
                                    jazz-theme
                                    jbeans-theme
                                    kaolin-themes
                                    light-soap-theme
                                    lush-theme
                                    madhat2r-theme
                                    majapahit-theme
                                    material-theme
                                    maven-test-mode
                                    minimal-theme
                                    minitest
                                    mmm-mode
                                    modus-themes
                                    moe-theme
                                    molokai-theme
                                    monochrome-theme
                                    monokai-theme
                                    multi
                                    mustang-theme
                                    nameless
                                    naquadah-theme
                                    nasm-mode
                                    noctilux-theme
                                    nodejs-repl
                                    npm-mode
                                    obsidian-theme
                                    occidental-theme
                                    oldlace-theme
                                    omtose-phellack-theme
                                    phoenix-dark-mono-theme
                                    phoenix-dark-pink-theme
                                    php-auto-yasnippets
                                    php-extras
                                    phpcbf
                                    phpunit
                                    pip-requirements
                                    pipenv
                                    planet-theme
                                    plantuml-mode
                                    poetry
                                    professional-theme
                                    pug-mode
                                    purple-haze-theme
                                    py-isort
                                    pydoc
                                    pyenv-mode
                                    pytest
                                    railscasts-theme
                                    rebecca-theme
                                    reverse-theme
                                    ruby-hash-syntax
                                    ruby-refactor
                                    ruby-test-mode
                                    ruby-tools
                                    rvm
                                    sass-mode
                                    scss-mode
                                    seeing-is-believing
                                    seti-theme
                                    shell-pop
                                    slim-mode
                                    smyx-theme
                                    soft-charcoal-theme
                                    soft-morning-theme
                                    soft-stone-theme
                                    solarized-theme
                                    soothe-theme
                                    spacegray-theme
                                    sphinx-doc
                                    spotify
                                    string-edit ;; TODO this doesn't work so it is excluded
                                    subatomic-theme
                                    subatomic256-theme
                                    sublime-themes
                                    sunny-day-theme
                                    symbol-overlay
                                    symon
                                    tagedit
                                    tango-2-theme
                                    tango-plus-theme
                                    tangotango-theme
                                    terminal-here
                                    toxi-theme
                                    twilight-anti-bright-theme
                                    twilight-bright-theme
                                    twilight-theme
                                    ujelly-theme
                                    underwater-theme
                                    web-beautify
                                    web-mode
                                    white-sand-theme
                                    ;; writeroom-mode
                                    ws-butler
                                    x86-lookup
                                    xkcd
                                    xterm-color
                                    yaml-mode
                                    zonokai-emacs
                                    )

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper t

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner "/Users/blackfish/myemacsconfiguration/banners/3-d.png"

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 15)
                                (projects . 10))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   dotspacemacs-themes '(doom-oceanic-next
                         green-screen
                         almost-mono-black
                         zenburn
                         solarized-light
                         solarized-dark
                         spacemacs-dark
                         spacemacs-light
                         tao-yang)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator nil :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Fira Code"
                               ;; "Source Code Pro"
                               :size 13.0
                               :weight semi-bold
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state t

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar nil

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative nil
                                         :visual t
                                         :disabled-for-modes dired-mode
                                         doc-view-mode
                                         markdown-mode
                                         org-mode
                                         pdf-view-mode
                                         text-mode
                                         :size-limit-kb 1000)

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'origami

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%i@%s")
   ;; (previous "%I@%s@%f@%m")
   dotspacemacs-frame-title-format %i@%s

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup `trailing

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  )


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                   Fira (not working)                        ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (defun fira-code-mode--make-alist (list)
    "Generate prettify-symbols alist from LIST."
    (let ((idx -1))
      (mapcar
       (lambda (s)
         (setq idx (1+ idx))
         (let* ((code (+ #Xe100 idx))
                (width (string-width s))
                (prefix ())
                (suffix '(?\s (Br . Br)))
                (n 1))
           (while (< n width)
             (setq prefix (append prefix '(?\s (Br . Bl))))
             (setq n (1+ n)))
           (cons s (append prefix suffix (list (decode-char 'ucs code))))))
       list)))

  (defconst fira-code-mode--ligatures
    '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
      "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
      "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
      "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
      ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*"
      "/**" "/=" "/==" "/>" "//" "///" "&&" "||" "||="
      "|=" "|>" "^=" "$>" "++" "+++" "+>" "=:=" "=="
      "===" "==>" "=>" "=>>" "<=" "=<<" "=/=" ">-" ">="
      ">=>" ">>" ">>-" ">>=" ">>>" "<*" "<*>" "<|" "<|>"
      "<$" "<$>" "<!--" "<-" "<--" "<->" "<+" "<+>" "<="
      "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~"
      "<~~" "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>" "%%"
      "x" ":" "+" "+" "*"))

  (defvar fira-code-mode--old-prettify-alist)

  (defun fira-code-mode--enable ()
    "Enable Fira Code ligatures in current buffer."
    (setq-local fira-code-mode--old-prettify-alist prettify-symbols-alist)
    (setq-local prettify-symbols-alist (append (fira-code-mode--make-alist fira-code-mode--ligatures) fira-code-mode--old-prettify-alist))
    (prettify-symbols-mode t))

  (defun fira-code-mode--disable ()
    "Disable Fira Code ligatures in current buffer."
    (setq-local prettify-symbols-alist fira-code-mode--old-prettify-alist)
    (prettify-symbols-mode -1))

  (define-minor-mode fira-code-mode
    "Fira Code ligatures minor mode"
    :lighter " Fira Code"
    (setq-local prettify-symbols-unprettify-at-point 'right-edge)
    (if fira-code-mode
        (fira-code-mode--enable)
      (fira-code-mode--disable)))

  (defun fira-code-mode--setup ()
    "Setup Fira Code Symbols"
    (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol"))

  ;; enable run lisp in gnu emacs
  (setq inferior-lisp-program "sbcl")

  ;; Fix issue executing python file using lsp
  (setq python-shell-completion-native-enable "python3")


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                   Enable Mode                               ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (parrot-mode)
  (scroll-bar-mode)
  (ignore-errors (beacon-mode))
  (fringe-mode "right-only")
  ;; (display-time)
  ;; (provide 'fira-code-mode)
  ;; (require 'dap-python)
  ;; (setq dap-python-executable "python3")
  ;; (blink-cursor-mode 1)
  ;; (smartparens-mode 0)


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                  Disable Mode                               ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (spacemacs/toggle-mode-line-battery)
  ;; (spacemacs/toggle-minibuffer-system-monitor)
  ;; (smartparens-global-mode 0)


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                   Spotify                                   ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (setq counsel-spotify-client-id "$token")
  ;; (setq counsel-spotify-client-secret "$tokensec")
  ;; (global-set-key (kbd "C-c s f") 'counsel-spotify-next)
  ;; (global-set-key (kbd "C-c s b") 'counsel-spotify-previous)
  ;; (global-set-key (kbd "C-c s p") 'counsel-spotify-toggle-play-pause)


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                    Parrot                                   ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq parrot-rotate-dict '(
      (:rot ("alpha" "beta") :caps t :lower nil)
      ;; => rotations are "Alpha" "Beta"

      (:rot ("snek" "snake" "stawp"))
      ;; => rotatons are "snek" "snake" "stawp"

      (:rot ("yes" "no") :caps t :upcase t)
      ;; => rotations are "yes" "no", "Yes" "No", "YES" "NO"

      (:rot ("1" "0"))
      ;; => rotations for 1 and 0

      (:rot ("&" "|"))
      ;; => rotations are "&" "|"

      (:rot ("Luyang" "is" "a" "bad" "programmer" ":D") :caps t :upcase t)
      ;; ?#!!!!!

      ;; default dictionary starts here ('v')
      (:rot ("begin" "end") :caps t :upcase t)
      (:rot ("enable" "disable") :caps t :upcase t)
      (:rot ("enter" "exit") :caps t :upcase t)
      (:rot ("forward" "backward") :caps t :upcase t)
      (:rot ("front" "rear" "back") :caps t :upcase t)
      (:rot ("get" "set") :caps t :upcase t)
      (:rot ("high" "low") :caps t :upcase t)
      (:rot ("in" "out") :caps t :upcase t)
      (:rot ("left" "right") :caps t :upcase t)
      (:rot ("min" "max") :caps t :upcase t)
      (:rot ("on" "off") :caps t :upcase t)
      (:rot ("prev" "next"))
      (:rot ("start" "stop") :caps t :upcase t)
      (:rot ("true" "false") :caps t :upcase t)
      (:rot ("&&" "||"))
      (:rot ("==" "!="))
      (:rot ("." "->"))
      (:rot ("if" "else" "elif"))
      (:rot ("ifdef" "ifndef"))
      (:rot ("int8_t" "int16_t" "int32_t" "int64_t"))
      (:rot ("uint8_t" "uint16_t" "uint32_t" "uint64_t"))
      (:rot ("1" "2" "3" "4" "5" "6" "7" "8" "9" "10"))
      (:rot ("1st" "2nd" "3rd" "4th" "5th" "6th" "7th" "8th" "9th" "10th"))))

  (define-key evil-normal-state-map (kbd "[r") 'parrot-rotate-prev-word-at-point)
  (define-key evil-normal-state-map (kbd "]r") 'parrot-rotate-next-word-at-point))


;; ;; Do not write anything past this comment. This is where Emacs will
;; ;; auto-generate custom variable definitions.
;; (defun dotspacemacs/emacs-custom-settings ()
;;   "Emacs custom settings.
;; This is an auto-generated function, do not modify its content directly, use
;; Emacs customize menu instead.
;; This function is called at the very end of Spacemacs initialization."
;;   (custom-set-variables
;;    ;; custom-set-variables was added by Custom.
;;    ;; If you edit it by hand, you could mess it up, so be careful.
;;    ;; Your init file should contain only one such instance.
;;    ;; If there is more than one, they won't work right.
;;    '(company-quickhelp-color-background "#4F4F4F")
;;    '(company-quickhelp-color-foreground "#DCDCCC")
;;    '(compilation-message-face 'default)
;;    '(cua-global-mark-cursor-color "#2aa198")
;;    '(cua-normal-cursor-color "#657b83")
;;    '(cua-overwrite-cursor-color "#b58900")
;;    '(cua-read-only-cursor-color "#859900")
;;    '(custom-safe-themes
;;      '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "8efa3d21b3fa1ac084798fae4e89848ec26ae5c724b9417caf4922f4b2e31c2a" "f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "0d75aa06198c4245ac2a8877bfc56503d5d8199cc85da2c65a6791b84afb9024" default))
;;    '(dap-mode t nil (dap-mode))
;;    '(evil-want-Y-yank-to-eol nil)
;;    '(fci-rule-color "#383838")
;;    '(helm-completion-style 'helm)
;;    '(highlight-changes-colors '("#d33682" "#6c71c4"))
;;    '(highlight-symbol-colors
;;      '("#efe5da4aafb2" "#cfc5e1add08c" "#fe53c9e7b34f" "#dbb6d3c3dcf4" "#e183dee1b053" "#f944cc6dae48" "#d360dac5e06a"))
;;    '(highlight-symbol-foreground-color "#586e75")
;;    '(highlight-tail-colors
;;      '(("#eee8d5" . 0)
;;        ("#b3c34d" . 20)
;;        ("#6ccec0" . 30)
;;        ("#74adf5" . 50)
;;        ("#e1af4b" . 60)
;;        ("#fb7640" . 70)
;;        ("#ff699e" . 85)
;;        ("#eee8d5" . 100)))
;;    '(hl-bg-colors
;;      '("#e1af4b" "#fb7640" "#ff6849" "#ff699e" "#8d85e7" "#74adf5" "#6ccec0" "#b3c34d"))
;;    '(hl-fg-colors
;;      '("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3"))
;;    '(hl-todo-keyword-faces
;;      '(("TODO" . "#dc752f")
;;        ("NEXT" . "#dc752f")
;;        ("Luyang" . "#1e90ff")
;;        ("THEM" . "#2d9574")
;;        ("WIP" . "#3a81c3")
;;        ("OKAY" . "#3a81c3")
;;        ("BLOCKED" . "#f2241f")
;;        ("DONT" . "#f2241f")
;;        ("FAIL" . "#f2241f")
;;        ("DONE" . "#42ae2c")
;;        ("NOTE" . "#b1951d")
;;        ("KLUDGE" . "#b1951d")
;;        ("HACK" . "#b1951d")
;;        ("TEMP" . "#b1951d")
;;        ("FIXME" . "#dc752f")
;;        ("XXX+" . "#dc752f")
;;        ("\\?\\?\\?+" . "#dc752f")))
;;    '(lsp-ui-doc-border "#586e75")
;;    '(nrepl-message-colors
;;      '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
;;    '(org-agenda-files
;;      '("~/Dropbox/org/daily/30092021.org" "/Users/rubber/Dropbox/org/daily/29092021.org"))
;;    '(org-fontify-done-headline nil)
;;    '(org-fontify-todo-headline nil)
;;    '(org-todo-keyword-faces
;;      '(("REVIEW" . "#1e90ff")
;;        ("WIP" . "#600170")
;;        ("DONE" . "#55dd05")
;;        ("BLOCKED" . "#f2241f")
;;        ("NEXT" . "#00bfff")))
;;    '(org-todo-keywords '((sequence "TODO" "DONE" "NEXT" "WIP" "REVIEW" "BLOCKED")))
;;    '(package-selected-packages
;;      '(multi yaml-mode x86-lookup nasm-mode csv-mode parrot zonokai-emacs yasnippet-snippets yapfify xterm-color ws-butler writeroom-mode winum which-key web-mode web-beautify vterm volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil toc-org tide terminal-here tagedit symon symbol-overlay s string-inflection string-edit sphinx-doc spaceline-all-the-icons smeargle slim-mode shell-pop seeing-is-believing scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe restart-emacs rbenv rake rainbow-mode rainbow-identifiers rainbow-delimiters quickrun pytest pyenv-mode pydoc py-isort pug-mode prettier-js popwin poetry plantuml-mode pippel pipenv pip-requirements phpunit phpcbf php-extras php-auto-yasnippets password-generator paradox overseer orgit-forge org-superstar org-rich-yank org-projectile org-present org-pomodoro org-mime org-download org-contrib org-cliplink open-junk-file npm-mode nose nodejs-repl nameless mvn multi-term multi-line s mmm-mode minitest maven-test-mode markdown-toc macrostep lsp-ui lsp-python-ms lsp-pyright lsp-origami lsp-java lorem-ipsum livid-mode live-py-mode link-hint s json-reformat json-navigator json-mode js2-refactor js-doc inspector info+ indent-guide importmagic impatient-mode hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt helm-xref s helm-swoop helm-rtags helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-lsp helm-ls-git helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag groovy-mode groovy-imports google-translate google-c-style golden-ratio gnuplot gitignore-templates git-timemachine git-modes git-messenger git-link git-gutter-fringe gh-md gendoxy geben fuzzy font-lock+ flyspell-correct-helm flycheck-ycmd flycheck-rtags flycheck-pos-tip flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-terminal-cursor-changer evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr emojify emoji-cheat-sheet-plus emmet-mode elisp-slime-nav elisp-def editorconfig dumb-jump drupal-mode drag-stuff dotenv-mode s disaster dired-quick-sort diminish devdocs define-word cython-mode cpp-auto-include company-ycmd company-web company-rtags company-phpactor company-php company-emoji company-c-headers company-anaconda column-enforce-mode -sanityinc-tomorrow -sanityinc-solarized color-identifiers-mode clean-aindent-mode chruby centered-cursor-mode ccls bundler browse-at-remote blacken auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent ace-link ace-jump-helm-line ac-ispell))
;;    '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
;;    '(pos-tip-background-color "#eee8d5")
;;    '(pos-tip-foreground-color "#586e75")
;;    '(python-shell-exec-path '("/opt/homebrew/bin/python3"))
;;    '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
;;    '(term-default-bg-color "#fdf6e3")
;;    '(term-default-fg-color "#657b83")
;;    '(vc-annotate-background "#2B2B2B")
;;    '(vc-annotate-background-mode nil)
;;    '(vc-annotate-color-map
;;      '((20 . "#BC8383")
;;        (40 . "#CC9393")
;;        (60 . "#DFAF8F")
;;        (80 . "#D0BF8F")
;;        (100 . "#E0CF9F")
;;        (120 . "#F0DFAF")
;;        (140 . "#5F7F5F")
;;        (160 . "#7F9F7F")
;;        (180 . "#8FB28F")
;;        (200 . "#9FC59F")
;;        (220 . "#AFD8AF")
;;        (240 . "#BFEBBF")
;;        (260 . "#93E0E3")
;;        (280 . "#6CA0A3")
;;        (300 . "#7CB8BB")
;;        (320 . "#8CD0D3")
;;        (340 . "#94BFF3")
;;        (360 . "#DC8CC3")))
;;    '(vc-annotate-very-old-color "#DC8CC3")
;;    '(weechat-color-list
;;      '(unspecified "#fdf6e3" "#eee8d5" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#657b83" "#839496"))
;;    '(which-key-mode t)
;;    '(xterm-color-names
;;      ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
;;    '(xterm-color-names-bright
;;      ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
;;   (custom-set-faces
;;    ;; custom-set-faces was added by Custom.
;;    ;; If you edit it by hand, you could mess it up, so be careful.
;;    ;; Your init file should contain only one such instance.
;;    ;; If there is more than one, they won't work right.
;;    '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t))
;;   )

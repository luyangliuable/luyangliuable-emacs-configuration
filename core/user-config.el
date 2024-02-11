(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  (defun replace-html-entities (start end)
    "Replace < and > with &lt; and &gt;, and double newlines with newline and &nbsp; in the region."
    (interactive "r")
    (save-restriction
      (narrow-to-region start end)
      (goto-char (point-min))
      (while (search-forward "<" nil t)
        (replace-match "&lt;" nil t))
      (goto-char (point-min))
      (while (search-forward ">" nil t)
        (replace-match "&gt;" nil t))
      (goto-char (point-min))
      (while (search-forward "\n\n" nil t)
        (replace-match "\n&nbsp;\n" nil t))))

  (evil-leader/set-key "x h" 'replace-html-entities)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                       helm                                  ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; can press C-o to switch to the other list in helm otherwise make this t
  (setq helm-move-to-line-cycle-in-source nil)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                    gptel                                    ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (ignore-errors
    (prog
     (setq gptel-log-level 'debug)
     (setq-default gptel-model "mistral" ;Pick your default model
                   gptel-backend (gptel-make-ollama "Ollama"
                                   :host "localhost:11434"
                                   :stream t
                                   :models '("mistral")))))


  (gptel-make-ollama "Ollama"             ;Any name of your choosing
    :host "localhost:11434"               ;Where it's running
    :stream t                             ;Stream responses
    :models '("mistral"))          ;List of models


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                   copilot                                   ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (with-eval-after-load 'company
    ;; disable inline previews
    (delq 'company-preview-if-just-one-frontend company-frontends))
  
  (add-hook 'prog-mode-hook 'copilot-mode)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                   Fira                                      ;
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

  (when (window-system)
    (set-frame-font "Fira Code"))

  ;; (advice-add #'treemacs :after (lambda (&rest _) (setq-local treemacs-follow-mode nil)))

  (let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
                 (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
                 (36 . ".\\(?:>\\)")
                 (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
                 (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
                 (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
                 (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
                 (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
                 (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
                 (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
                 (48 . ".\\(?:x[a-zA-Z]\\)")
                 (58 . ".\\(?:::\\|[:=]\\)")
                 (59 . ".\\(?:;;\\|;\\)")
                 (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
                 (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
                 (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
                 (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
                 (91 . ".\\(?:]\\)")
                 (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
                 (94 . ".\\(?:=\\)")
                 (119 . ".\\(?:ww\\)")
                 (123 . ".\\(?:-\\)")
                 ;; (123 . ".\\(?:\\(?:{|\\)\\|[{|]\\)") ;; Do this for {|
                 (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
                 ;; (125 . ".\\(?:\\(?:}|\\)\\|[}|]\\)") ;; Do this for |}
                 (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
                 )
               ))

    (dolist (char-regexp alist)
      (set-char-table-range composition-function-table (car char-regexp)
                            `([,(cdr char-regexp) 0 font-shape-gstring]))))

  ;; disable ligatures in helm
  (add-hook 'ediff-mode-hook
            (lambda ()
              (setq auto-composition-mode nil)))

  ;; disable ligatures in ediff completely
  (add-hook 'helm-major-mode-hook
            (lambda ()
              (setq auto-composition-mode nil)))


  ;; enable run lisp in gnu emacs
  (setq inferior-lisp-program "sbcl")

  ;; Fix issue executing python file using lsp
  (setq python-shell-completion-native-enable "python3")


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                   Key-bindings                              ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Enter Key to save file
  (evil-define-key 'normal 'global (kbd "RET") 'save-buffer)

  ;; Emacs Key-bindings
  (global-set-key (kbd "C-c b") 'luyang-spaceline-placeholder)

  ;;
  ;;; Spacemacs Key-bindings
  ;;
                                        ;
  ;; Co-pilot Keybindings
  (define-prefix-command 'copilot)
  (spacemacs/set-leader-keys "a C" 'copilot)
  (spacemacs/set-leader-keys "a C e" 'copilot-mode)
  (spacemacs/set-leader-keys "a C d" 'copilot-diagnose)
  (spacemacs/set-leader-keys "a C l" 'copilot-login)
  (spacemacs/set-leader-keys "a C c" 'copilot-clear-overlay)
  
  (with-eval-after-load 'copilot
    (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "<return>") 'copilot-accept-completion))

  ;; (define-key evil-insert-state-map (kbd "C-<tab>") 'copilot-accept-completion-by-word)
  ;; (define-key evil-insert-state-map (kbd "C-TAB") 'copilot-accept-completion-by-word)
  (define-key evil-insert-state-map (kbd "C-<tab>") 'copilot-next-completion)
  (define-key evil-insert-state-map (kbd "C-TAB") 'copilot-next-completion)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;                                   Minor Stuff                               ;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (ignore-errors
    (progn
      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      ;                                   Enable Modes                              ;
      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      (setq javascript-indent-level 2)
      (parrot-mode)
      (beacon-mode)
      (fringe-mode "right-only")
      (add-hook 'treemacs-mode-hook 'treemacs-follow-mode)
      (require 'gptel)
      ;; When in treemacs mode disable follow mode
      ;; (scroll-bar-mode)
      ;; (display-time)
      ;; (provide 'fira-code-mode)
      ;; (require 'dap-python)
      ;; (setq dap-python-executable "python3")
      ;; (blink-cursor-mode 1)
      ;; (smartparens-mode 0)

      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      ;                                   Spaceline                                 ;
      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      ;; Make spaceline thinner
      (setq powerline-height 20)

      ;; Decrease font size in spaceline
      (setq powerline-scale 0.5)))


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

                             ;; ?#!!!!!

                             ;; default dictionary starts here ('v')
                             (:rot ("right-only" "left-only" "default" "no-fringe" "minimal") :caps t :upcase t)
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

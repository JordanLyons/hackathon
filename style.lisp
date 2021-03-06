(in-package :story-css)

(defun hack-style ()
  (style (:is "custom-style")
    `(

      (":root"
       :--primary-color ,(color purple 500)
       :--light-primary-color ,(color blue 500)
       :--accent-color ,(color yellow 200 t)

       :--paper-toolbar-color white
       :--paper-toolbar-title ,(app --paper-font-headline)

       :--paper-spinner-color white

       (:--paper-fab :color black)
       :--paper-fab-keyboard-focus-background ,(color yellow 100 t))

      ,@(iter (for (name color) in '((wiki         deep-purple)
                                     (schedule     pink)
                                     (sharing      cyan)
                                     (buy-ticket   indigo)
                                     (email-list   green)
                                     (source-code  amber)
                                     (sponsors     indigo)
                                     (conduct      deep-orange)
                                     (participate  blue)
                                     (prayer       blue-grey)
                                     (time         grey)
                                     (government   purple)
                                     (school       light-blue)
                                     (media        teal)))
          (appending `( (,(format nil "paper-button.~(~A~)" name) :background ,(%color color 100))
                        (,(format nil "paper-toolbar.~(~A~)" name) :--paper-toolbar-background ,(%color color 700)))))

      (div.timezone :opacity ,(var --dark-secondary-opacity))

      (".schedule h1" :margin-bottom 0px)
      (".schedule h3" :margin-bottom 0px)

      ("table.schedule" :margin-top 10px :font ,(var --paper-font-headline))
      ("table.schedule th" :text-align left :padding-right 20px :width 260px)
      ("table.schedule td" :font-weight bold)

      (div.grey :background ,(color grey 700))

      (paper-card.press-release :margin "0px 10px 10px 0px")

      )))

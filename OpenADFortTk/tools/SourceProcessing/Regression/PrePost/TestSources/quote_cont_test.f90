      program quote_cont_test
      character(len=16),dimension(12),parameter ::                      &
     & cap    =      (/"     '''''      ",                              &
     &                 "     '''''      ",                              &
     &                 "     '''''      ",                              &
     &                 "      '''       ",                              &
     &                 "       '        ",                              &
     &                 '                ',                              &
     &                 '                ',                              &
     &                 '                ',                              &
     &                 '                ',                              &
     &                 '                ',                              &
     &                 '                ',                              &
     &                 '                '/)

      print *,cap

      end program quote_cont_test

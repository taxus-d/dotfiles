"syn region fortranDirective start=/!$omp.\{-}/ end=/[^\&]$/
syn region fortranDirective start=/!$omp[ \n]/ end=/[^\&]$/
syn region fortranDirective start=/!$ / end=/[^\&]$/
hi def link fortranDirective PreProc


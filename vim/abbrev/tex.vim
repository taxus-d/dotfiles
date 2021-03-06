iabbrev <buffer> @a \alpha
iabbrev <buffer> @b \beta
iabbrev <buffer> @g \gamma
iabbrev <buffer> @d \delta
iabbrev <buffer> @e \varepsilon
iabbrev <buffer> @z \zeta
iabbrev <buffer> @h \eta
iabbrev <buffer> @q \theta
iabbrev <buffer> @i \iota
iabbrev <buffer> @k \kappa
iabbrev <buffer> @l \lambda
iabbrev <buffer> @m \mu
iabbrev <buffer> @v \nu
iabbrev <buffer> @x \xi
iabbrev <buffer> @p \pi
iabbrev <buffer> @r \rho
iabbrev <buffer> @s \sigma
iabbrev <buffer> @t \tau
iabbrev <buffer> @u \upsilon
iabbrev <buffer> @f \varphi
iabbrev <buffer> @y \psi
iabbrev <buffer> @w \omega

iabbrev <buffer> @G \Gamma
iabbrev <buffer> @D \Delta
iabbrev <buffer> @Q \Theta
iabbrev <buffer> @L \Lambda
iabbrev <buffer> @X \Xi
iabbrev <buffer> @P \Pi
iabbrev <buffer> @S \Sigma
iabbrev <buffer> @U \Upsilon
iabbrev <buffer> @F \Phi
iabbrev <buffer> @Y \Psi
iabbrev <buffer> @W \Omega


iabbrev <buffer> @* \times
iabbrev <buffer> @8 \infty
iabbrev <buffer> @oo \infty
iabbrev <buffer> @2 \sqrt
iabbrev <buffer> @6 \partial
iabbrev <buffer> @/ \frac
iabbrev <buffer> @. \cdot

iabbrev <buffer> @( \subset
iabbrev <buffer> @) \supset

iabbrev <buffer> @A \forall
iabbrev <buffer> @E \exists

if g:tex_unicodecompiler == 1
iabbrev <buffer> @a α
iabbrev <buffer> @b β
iabbrev <buffer> @g γ
iabbrev <buffer> @d δ
iabbrev <buffer> @e ε
iabbrev <buffer> @z ζ
iabbrev <buffer> @h η
iabbrev <buffer> @q θ
iabbrev <buffer> @i ι
iabbrev <buffer> @k ϰ 
iabbrev <buffer> @l λ
iabbrev <buffer> @m μ
iabbrev <buffer> @v ν
iabbrev <buffer> @x χ
iabbrev <buffer> @p π
iabbrev <buffer> @r ρ
iabbrev <buffer> @s σ
iabbrev <buffer> @t τ
iabbrev <buffer> @u υ
iabbrev <buffer> @f φ
iabbrev <buffer> @y ψ
iabbrev <buffer> @w ω

iabbrev <buffer> @G Γ
iabbrev <buffer> @D Δ
iabbrev <buffer> @Q Θ
iabbrev <buffer> @L Λ
iabbrev <buffer> @X \Xi
iabbrev <buffer> @P Π
iabbrev <buffer> @S Σ
iabbrev <buffer> @U \Upsilon
iabbrev <buffer> @F Φ
iabbrev <buffer> @Y Ψ
iabbrev <buffer> @W Ω

iabbrev <buffer> @* ×
iabbrev <buffer> @8 ∞
iabbrev <buffer> @oo ∞
iabbrev <buffer> @2 \sqrt
iabbrev <buffer> @6 ∂
iabbrev <buffer> @/ \frac
iabbrev <buffer> @. \cdot

iabbrev <buffer> @( \subset
iabbrev <buffer> @) \supset

iabbrev <buffer> @A \forall
iabbrev <buffer> @E \exists
endif

" NoMatchParen
" o[missions] abbrev ;[end]
iabbrev <buffer> o,,,; <BS>, \dotsc,
iabbrev <buffer> o+++; + \dotsb +
iabbrev <buffer> o***; \dotsm
" a[rrows] abbrev ;[end]
iabbrev <buffer> a<=>; \Leftrightarrow
iabbrev <buffer> a<->; \leftrightarrow
iabbrev <buffer> a=>;  \Rightarrow
iabbrev <buffer> a<=;  \Leftarrow
" [e]x[tesible arrows] abbrev ;[end]
iabbrev <buffer> x<=>; \xLeftrightarrow
iabbrev <buffer> x<->; \xleftrightarrow
iabbrev <buffer> x=>;  \xRightarrow
iabbrev <buffer> x<=;  \xLeftarrow
iabbrev <buffer> x->;  \xrightarrow
iabbrev <buffer> x<-;  \xleftarrow
" r[elations] abbrev ;[end]
iabbrev <buffer> r<=;  \leqslant
inoreabbrev <buffer> r>=;  \geqslant
" just typos
" inoreabbrev <buffer> \e  \Exp
" inoreabbrev <buffer> \v  \Var

iabbrev <buffer> тире <bs>~"--- 

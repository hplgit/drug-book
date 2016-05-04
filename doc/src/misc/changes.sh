doconce subst 'section\{(.+?) *(\\label\{.+?\})\}' 'section{\g<1>}\n\label{\g<2>}' *.tex
doconce subst 'chapter\{(.+?) *(\\label\{.+?\})\}' 'chapter{\g<1>}\n\label{\g<2>}' *.tex
doconce subst 'section(\[.+?\]\{.+?) *(\\label\{.+?\})\}' 'section\g<1>}\n\label{\g<2>}' *.tex
doconce subst 'chapter(\[.+?\]\{.+?) *(\\label\{.+?\})\}' 'chapter\g<1>}\n\label{\g<2>}' *.tex
doconce subst 'label\{(.+?)/(.+?)\.png\}' 'label{\g<1>:\g<2>}' *.tex
doconce subst   'ref\{(.+?)/(.+?)\.png\}'   'ref{\g<1>:\g<2>}' *.tex
doconce subst '%\n' '\n' *.tex
doconce subst '\$\\left\( *\\ref\{(.+?)\} *\\right\).*?\$' '(ref{\g<1>})' *.tex
doconce subst '% *\\GTL\{.+' '' *.tex
doconce subst '% *\\KHJ\{.+' '' *.tex
doconce subst 'label\{\\label\{(.+?)\}\}' 'label{\g<1>}' *.tex
doconce subst -s '\\fig\[(.+?)\]\{(.+?)/(.+?)\.(png|pdf)\}\{(.+?)\}\n\n' 'FIGURE: [fig/\g<2>_\g<3>.\g<4>, width=500 frac=0.8] \g<5> label{\g<2>:\g<3>}' *.tex
doconce subst -s '\\fig\{(.+?)/(.+?)\.(png|pdf)\}\{(.+?)\}\n\n' 'FIGURE: [fig/\g<1>_\g<2>.\g<3>, width=500 frac=0.8] \g<4> label{\g<1>:\g<2>}' *.tex

doconce subst   'ref\{(.+?)/(.+?)\.pdf\}'   'ref{\g<1>:\g<2>}' *.tex







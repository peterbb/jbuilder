  $ $JBUILDER build -j1 --root . --dev bin/technologic.bc.js @install lib/x.cma.js lib/x__Y.cmo.js bin/z.cmo.js
      ocamlopt .ppx/js_of_ocaml-ppx/ppx.exe
        ocamlc lib/stubs.o
        ocamlc lib/x__.{cmi,cmo,cmt}
           ppx bin/technologic.pp.ml
           ppx bin/z.pp.ml
           ppx lib/x.pp.ml
           ppx lib/y.pp.ml
    ocamlmklib lib/dllx_stubs.so,lib/libx_stubs.a
      ocamlopt lib/x__.{cmx,o}
      ocamldep bin/technologic.depends.ocamldep-output
      ocamldep lib/x.depends.ocamldep-output
   js_of_ocaml .js/js_of_ocaml/js_of_ocaml.cma.js
   js_of_ocaml .js/stdlib/stdlib.cma.js
        ocamlc lib/x__Y.{cmi,cmo,cmt}
   js_of_ocaml lib/x__Y.cmo.js
      ocamlopt lib/x__Y.{cmx,o}
        ocamlc lib/x.{cmi,cmo,cmt}
      ocamlopt lib/x.{cmx,o}
        ocamlc bin/z.{cmi,cmo,cmt}
        ocamlc lib/x.cma
      ocamlopt lib/x.{a,cmxa}
   js_of_ocaml bin/z.cmo.js
        ocamlc bin/technologic.{cmi,cmo,cmt}
   js_of_ocaml lib/x.cma.js
   js_of_ocaml bin/technologic.bc.runtime.js
      ocamlopt lib/x.cmxs
   js_of_ocaml bin/technologic.cmo.js
     jsoo_link bin/technologic.bc.js
  $ $NODE ./_build/default/bin/technologic.bc.js
  buy it
  use it
  break it
  fix it
  $ $JBUILDER build -j1 --root . bin/technologic.bc.js @install
        ocamlc lib/x__.{cmi,cmo,cmt}
        ocamlc lib/x__Y.{cmi,cmo,cmt}
      ocamlopt lib/x__.{cmx,o}
        ocamlc lib/x.{cmi,cmo,cmt}
      ocamlopt lib/x__Y.{cmx,o}
        ocamlc lib/x.cma
        ocamlc bin/z.{cmi,cmo,cmt}
      ocamlopt lib/x.{cmx,o}
        ocamlc bin/technologic.{cmi,cmo,cmt}
      ocamlopt lib/x.{a,cmxa}
        ocamlc bin/technologic.bc
      ocamlopt lib/x.cmxs
   js_of_ocaml bin/technologic.bc.js
  $ $NODE ./_build/default/bin/technologic.bc.js
  buy it
  use it
  break it
  fix it

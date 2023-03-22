type document

external document: document = "document"

@send
external getElementById: (document, string) => Js.null_undefined<Dom.node> = "getElementById"

module Styles = {

    open CssJs

    let root = [

        fontFamilies([#custom("inter"), #custom("avenir"), #custom("helvetica"), #custom("arial"), #sansSerif ])
        , fontSize(#px(16))
        , lineHeight(#px(24))
        , fontWeight(#num(400))
    
        // color-scheme: light dark;
        , unsafe("color-scheme", "light dark")
        , color(#rgba(255, 255, 255, #num(0.87)))
        , backgroundColor(#hex("242424"))
    
        // font-synthesis: none;
        , unsafe("font-synthesis", "none")
        // text-rendering: optimizeLegibility;
        , unsafe("text-rendering", "optimizeLegibility")
        // -webkit-font-smoothing: antialiased;
        , unsafe("-webkit-font-smoothing", "antialiased")
        // -moz-osx-font-smoothing: grayscale;
        , unsafe("-moz-osx-font-smoothing", "grayscale")
        // -webkit-text-size-adjust: 100%;
        , unsafe("-webkit-text-size-adjust", "100%")
    ]

    let body = [
        margin(#px(0))
        , display(#flex)
        , alignItems(#center)
        , justifyItems(#center)
        , minWidth(#px(32))
        , minHeight(#vh(100.0))
    ]

    let app = [
        maxWidth(#px(1280))
        , margin2(~v = #zero, ~h = #auto)
        , padding(#rem(2.0))
        , textAlign(#center)
    ]
}

CssJs.global(. ":root", Styles.root)
CssJs.global(. "body", Styles.body)
CssJs.global(. "#app", Styles.app)

let app = document->getElementById("app")

let _ = Counter.main(app, ())

module Deku.Example.Portal where

import Prelude

import Control.Alt (alt, (<|>))
import Data.Foldable (oneOfMap)
import Data.Profunctor (lcmap)
import Data.Tuple.Nested ((/\))
import Data.Typelevel.Num (d0, d1)
import Data.Vec (index, (+>))
import Data.Vec as V
import Deku.Attribute (cb, (:=))
import Deku.Control (blank, plant, portal, text_)
import Deku.DOM as D
import Deku.Toplevel (runInBody1, runInBody2)
import Effect (Effect)
import FRP.Event (bang, bus, mapAccum)

main :: Effect Unit
main = runInBody2
  ( D.div_
      [ text_ "Portal acceptance test"
      , D.hr_ blank
      , D.div_
          [ text_ "Switching portals should flip between them"
          , D.div_
              ( bus \push -> lcmap (alt (bang unit)) \event -> portal
                  ( map
                      ( \i -> D.video
                          ( oneOfMap bang
                              [ D.Controls := "true", D.Width := "250" ]
                          )
                          ( D.source
                              ( oneOfMap bang
                                  [ D.Src := i, D.Xtype := "video/mp4" ]
                              )
                              blank
                          )
                      )
                      ( "https://interactive-examples.mdn.mozilla.net/media/cc0-videos/flower.mp4"
                          +> "https://www.w3schools.com/jsref/movie.mp4"
                          +> V.empty
                      )
                  )
                  \v _ -> do
                    let
                      p0 = index v d0
                      p1 = index v d1
                      ev = event # mapAccum
                        \_ x -> not x /\ if x then p0 else p1
                    plant $ D.div_
                      [ D.button (bang $ D.OnClick := cb (const $ push unit))
                          [ text_ "Switch videos" ]
                      , D.div_ [D.div_ (ev true), D.div_ (ev false)]
                      ]
              )
          ]
      , D.hr_ blank
      , D.div_
          [ text_ "Single portals should not accumulate"
          , D.div_
              ( bus \push -> lcmap (alt (bang unit)) \event -> portal
                  ( map
                      ( \i -> D.video
                          ( oneOfMap bang
                              [ D.Controls := "true", D.Width := "250" ]
                          )
                          ( D.source
                              ( oneOfMap bang
                                  [ D.Src := i, D.Xtype := "video/mp4" ]
                              )
                              blank
                          )
                      )
                      ( "https://interactive-examples.mdn.mozilla.net/media/cc0-videos/flower.mp4"
                          +> "https://www.w3schools.com/jsref/movie.mp4"
                          +> V.empty
                      )
                  )
                  \v _ -> do
                    let
                      p0 = index v d0
                      p1 = index v d1
                      ev = event # mapAccum
                        \_ x -> not x /\ if x then p0 else p1
                    plant $ D.div_
                      [ D.button (bang $ D.OnClick := cb (const $ push unit))
                          [ text_ "Toggle videos" ]
                      , D.div_ (ev true)
                      ]
              )
          ]
      , D.hr_ blank
      , D.div_
          [ text_ "Portal should come in and out"
          , D.div_
              ( bus \push -> lcmap (alt (bang unit)) \event -> portal
                  ( map
                      ( \i -> D.video
                          ( oneOfMap bang
                              [ D.Controls := "true", D.Width := "250" ]
                          )
                          ( D.source
                              ( oneOfMap bang
                                  [ D.Src := i, D.Xtype := "video/mp4" ]
                              )
                              blank
                          )
                      )
                      ( "https://interactive-examples.mdn.mozilla.net/media/cc0-videos/flower.mp4"
                          +> V.empty
                      )
                  )
                  \v _ -> do
                    let
                      p0 = index v d0
                      ev = event # mapAccum
                        \_ x -> not x /\ if x then p0 else blank
                    plant $ D.div_
                      [ D.button (bang $ D.OnClick := cb (const $ push unit))
                          [ text_ "Toggle videos" ]
                      , D.div_ (ev true)
                      ]
              )
          ]
      , D.hr_ blank
      ]
  )
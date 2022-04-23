module Deku.DOM.Elt.Input where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (StreamingElt, Element)
import FRP.Event (Event)

data Input_

input
  :: forall seed lock payload
   . Plant seed (Event (Event (StreamingElt lock payload)))
  => Event (Attribute Input_)
  -> seed
  -> Element lock payload
input attributes seed = elementify "input" attributes (plant seed)

input_
  :: forall seed lock payload
   . Plant seed (Event (Event (StreamingElt lock payload)))
  => seed
  -> Element lock payload
input_ = input empty


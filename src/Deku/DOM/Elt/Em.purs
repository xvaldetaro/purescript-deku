module Deku.DOM.Elt.Em where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (StreamingElt, Element)
import FRP.Event (Event)

data Em_

em
  :: forall seed lock payload
   . Plant seed (Event (Event (StreamingElt lock payload)))
  => Event (Attribute Em_)
  -> seed
  -> Element lock payload
em attributes seed = elementify "em" attributes (plant seed)

em_
  :: forall seed lock payload
   . Plant seed (Event (Event (StreamingElt lock payload)))
  => seed
  -> Element lock payload
em_ = em empty


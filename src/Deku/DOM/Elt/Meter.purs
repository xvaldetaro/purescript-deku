module Deku.DOM.Elt.Meter where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (StreamingElt, Element)
import FRP.Event (Event)

data Meter_

meter
  :: forall seed lock payload
   . Plant seed (Event (Event (StreamingElt lock payload)))
  => Event (Attribute Meter_)
  -> seed
  -> Element lock payload
meter attributes seed = elementify "meter" attributes (plant seed)

meter_
  :: forall seed lock payload
   . Plant seed (Event (Event (StreamingElt lock payload)))
  => seed
  -> Element lock payload
meter_ = meter empty


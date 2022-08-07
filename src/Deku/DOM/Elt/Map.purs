module Deku.DOM.Elt.Map where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Map_

map
  :: forall lock payload
   . AnEvent M (Attribute Map_)
  -> Array (Domable lock payload)
  -> Domable lock payload
map attributes kids = Element' (elementify "map" attributes (fixed kids))

map_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
map_ = map empty

module Deku.DOM.Elt.Legend where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Legend_

legend
  :: forall lock payload
   . AnEvent M (Attribute Legend_)
  -> Array (Domable lock payload)
  -> Domable lock payload
legend attributes kids = Element' (elementify "legend" attributes (fixed kids))

legend_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
legend_ = legend empty

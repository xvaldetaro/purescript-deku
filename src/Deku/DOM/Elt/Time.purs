module Deku.DOM.Elt.Time where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Time_

time
  :: forall lock payload
   . AnEvent M (Attribute Time_)
  -> Array (Domable lock payload)
  -> Domable lock payload
time attributes kids = Element' (elementify "time" attributes (fixed kids))

time_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
time_ = time empty

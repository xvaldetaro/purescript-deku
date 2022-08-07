module Deku.DOM.Elt.Noscript where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Noscript_

noscript
  :: forall lock payload
   . AnEvent M (Attribute Noscript_)
  -> Array (Domable lock payload)
  -> Domable lock payload
noscript attributes kids = Element'
  (elementify "noscript" attributes (fixed kids))

noscript_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
noscript_ = noscript empty

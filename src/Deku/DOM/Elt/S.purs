module Deku.DOM.Elt.S where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data S_

s
  :: forall lock payload
   . AnEvent M (Attribute S_)
  -> Array (Domable lock payload)
  -> Domable lock payload
s attributes kids = Element' (elementify "s" attributes (fixed kids))

s_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
s_ = s empty

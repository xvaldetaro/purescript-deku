module Deku.DOM.Elt.H4 where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data H4_

h4
  :: forall lock payload
   . AnEvent M (Attribute H4_)
  -> Array (Domable lock payload)
  -> Domable lock payload
h4 attributes kids = Element' (elementify "h4" attributes (fixed kids))

h4_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
h4_ = h4 empty

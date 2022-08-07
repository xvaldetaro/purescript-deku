module Deku.DOM.Elt.Hr where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Hr_

hr
  :: forall lock payload
   . AnEvent M (Attribute Hr_)
  -> Array (Domable lock payload)
  -> Domable lock payload
hr attributes kids = Element' (elementify "hr" attributes (fixed kids))

hr_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
hr_ = hr empty

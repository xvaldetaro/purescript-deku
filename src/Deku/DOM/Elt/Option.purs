module Deku.DOM.Elt.Option where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Option_

option
  :: forall lock payload
   . AnEvent M (Attribute Option_)
  -> Array (Domable lock payload)
  -> Domable lock payload
option attributes kids = Element' (elementify "option" attributes (fixed kids))

option_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
option_ = option empty

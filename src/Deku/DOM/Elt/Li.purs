module Deku.DOM.Elt.Li where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Li_

li
  :: forall lock payload
   . AnEvent M (Attribute Li_)
  -> Array (Domable lock payload)
  -> Domable lock payload
li attributes kids = Element' (elementify "li" attributes (fixed kids))

li_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
li_ = li empty

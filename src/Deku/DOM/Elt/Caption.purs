module Deku.DOM.Elt.Caption where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Caption_

caption
  :: forall lock payload
   . AnEvent M (Attribute Caption_)
  -> Array (Domable lock payload)
  -> Domable lock payload
caption attributes kids = Element'
  (elementify "caption" attributes (fixed kids))

caption_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
caption_ = caption empty

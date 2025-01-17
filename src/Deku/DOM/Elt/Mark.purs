module Deku.DOM.Elt.Mark where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Mark_

mark
  :: forall lock payload
   . Event (Attribute Mark_)
  -> Array (Domable lock payload)
  -> Domable lock payload
mark attributes kids = Element' (elementify "mark" attributes (fixed kids))

mark_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
mark_ = mark empty


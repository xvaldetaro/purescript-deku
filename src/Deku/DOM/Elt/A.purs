module Deku.DOM.Elt.A where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data A_

a
  :: forall lock payload
   . Event (Attribute A_)
  -> Array (Domable lock payload)
  -> Domable lock payload
a attributes kids = Element' (elementify "a" attributes (fixed kids))

a_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
a_ = a empty


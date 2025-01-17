module Deku.DOM.Elt.Tfoot where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Tfoot_

tfoot
  :: forall lock payload
   . Event (Attribute Tfoot_)
  -> Array (Domable lock payload)
  -> Domable lock payload
tfoot attributes kids = Element' (elementify "tfoot" attributes (fixed kids))

tfoot_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
tfoot_ = tfoot empty


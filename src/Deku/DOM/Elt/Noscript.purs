module Deku.DOM.Elt.Noscript where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Noscript_

noscript
  :: forall lock payload
   . Event (Attribute Noscript_)
  -> Array (Domable lock payload)
  -> Domable lock payload
noscript attributes kids = Element' (elementify "noscript" attributes (fixed kids))

noscript_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
noscript_ = noscript empty


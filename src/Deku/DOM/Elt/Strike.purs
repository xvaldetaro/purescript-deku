module Deku.DOM.Elt.Strike where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Strike_

strike
  :: forall lock payload
   . Event (Attribute Strike_)
  -> Array (Domable lock payload)
  -> Domable lock payload
strike attributes kids = Element' (elementify "strike" attributes (fixed kids))

strike_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
strike_ = strike empty


module Deku.DOM.Elt.Font where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Font_

font
  :: forall lock payload
   . Event (Attribute Font_)
  -> Array (Domable lock payload)
  -> Domable lock payload
font attributes kids = Element' (elementify "font" attributes (fixed kids))

font_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
font_ = font empty


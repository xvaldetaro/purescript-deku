module Deku.DOM.Elt.Frame where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Frame_

frame
  :: forall lock payload
   . Event (Attribute Frame_)
  -> Array (Domable lock payload)
  -> Domable lock payload
frame attributes kids = Element' (elementify "frame" attributes (fixed kids))

frame_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
frame_ = frame empty


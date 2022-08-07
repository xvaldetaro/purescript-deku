module Deku.DOM.Elt.Script where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Script_

script
  :: forall lock payload
   . AnEvent M (Attribute Script_)
  -> Array (Domable lock payload)
  -> Domable lock payload
script attributes kids = Element' (elementify "script" attributes (fixed kids))

script_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
script_ = script empty

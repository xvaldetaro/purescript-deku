module Deku.DOM.Elt.Main where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Main_

main
  :: forall lock payload
   . Event (Attribute Main_)
  -> Array (Domable lock payload)
  -> Domable lock payload
main attributes kids = Element' (elementify "main" attributes (fixed kids))

main_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
main_ = main empty


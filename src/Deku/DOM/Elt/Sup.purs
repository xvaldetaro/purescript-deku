module Deku.DOM.Elt.Sup where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Sup_

sup
  :: forall lock payload
   . Event (Attribute Sup_)
  -> Array (Domable lock payload)
  -> Domable lock payload
sup attributes kids = Element' (elementify "sup" attributes (fixed kids))

sup_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
sup_ = sup empty


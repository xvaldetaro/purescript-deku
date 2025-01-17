module Deku.DOM.Elt.Acronym where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Acronym_

acronym
  :: forall lock payload
   . Event (Attribute Acronym_)
  -> Array (Domable lock payload)
  -> Domable lock payload
acronym attributes kids = Element' (elementify "acronym" attributes (fixed kids))

acronym_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
acronym_ = acronym empty

